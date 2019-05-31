import Foundation

public final class Authenticator {
    public struct Credentials {
        public let key: String
        public let secret: String
    }

    public private(set) var apiCredentials: Credentials
    public private(set) var oauthCredentials: Credentials?

    public init(credentials: Credentials) {
        self.apiCredentials = credentials
    }

    public convenience init(key: String, secret: String) {
        self.init(credentials: Credentials(key: key, secret: secret))
    }
}

// public extension Authenticator {
//     func authorize(scope: [Scope], callbackURL: URL?, callback: (Result<Bool, Error>) -> Void) {
//         guard var urlRequest = requestToken(for: scope, callbackURL: callbackURL) else { return }
//     }
// }

public extension Authenticator {
    func requestToken(for scope: [Scope], callbackURL: URL? = nil) -> URLRequest? {
        guard var urlRequest = OAuth.requestToken(scope: scope, oauthCallback: callbackURL).urlRequest else { return nil }
        urlRequest.setValue(headers: OAuth.Header.authorizationHeader(consumerCredentials: apiCredentials, oauthCredentials: oauthCredentials))
        return urlRequest
    }

    func accessToken(oauthVerifier: String) -> URLRequest? {
        guard var urlRequest = OAuth.accessToken(oauthVerifier: oauthVerifier).urlRequest else { return nil }
        urlRequest.setValue(headers: OAuth.Header.authorizationHeader(consumerCredentials: apiCredentials, oauthCredentials: oauthCredentials))
        return urlRequest
    }
}

// MARK - OAuth Scope

public extension Authenticator {
    enum Scope: String, CaseIterable {
        case emailRead = "email_r"
        case listingsRead = "listings_r"
        case listingsWrite = "listings_w"
        case listingsDelete = "listings_d"
        case transactionsRead = "transactions_r"
        case transactionsWrite = "transactions_w"
        case billingRead = "billing_r"
        case profileRead = "profile_r"
        case profileWrite = "profile_w"
        case addressRead = "address_r"
        case addressWrite = "address_w"
        case favoritesReadWrite = "favorites_rw"
        case shopsReadWrite = "shops_rw"
        case cartReadWrite = "cart_rw"
        case recommendReadWrite = "recommend_rw"
        case feedbackRead = "feedback_r"
        case treasuryRead = "treasury_r"
        case treasureWrite = "treasury_w"
    }
}

extension Authenticator.Scope {
    static func queryString(_ scope: [Authenticator.Scope]) -> String {
        return scope.map { $0.rawValue }.joined(separator: " ")
    }
}

extension Array where Iterator.Element == Authenticator.Scope {
    var queryString: String {
        return Authenticator.Scope.queryString(self)
    }
}

// MARK - OAuth

public extension Authenticator {
    enum OAuth {
        case requestToken(scope: [Scope], oauthCallback: URL?)
        case accessToken(oauthVerifier: String)
    }
}

extension Authenticator.OAuth: URLConvertible, URLRequestConvertible {
    enum QueryParameters: String, URLQueryItemConvertible {
        case scope
        case oauthCallback = "oauth_callback"
        case oauthVerifier = "oauth_verifier"
    }

    public var urlString: String? {
        return url?.absoluteString
    }

    public var url: URL? {
        guard let URL = URL.baseURL?.appendingPathComponent(urlPathString) else { return nil }

        var components = URLComponents(url: URL, resolvingAgainstBaseURL: true)
        components?.queryItems = urlQueryItems

        return components?.url
    }

    var urlPathString: String {
        switch self {
        case .requestToken:
            return "oauth/request_token"
        case .accessToken:
            return "oauth/access_token"
        }
    }

    var urlQueryItems: [URLQueryItem] {
        switch self {
        case let .requestToken(scope, oauthCallback):
            return [
                QueryParameters.scope.queryItem(value: scope.queryString),
                QueryParameters.oauthCallback.queryItem(value: oauthCallback?.absoluteString ?? "oob"),
            ]
        case let .accessToken(oauthVerifier):
            return [
                QueryParameters.oauthVerifier.queryItem(value: oauthVerifier),
            ]
        }
    }
}

extension Authenticator.OAuth {
    enum Header: String, HTTPHeaderConvertible {
        case version = "oauth_version"
        case consumerKey = "oauth_consumer_key"
        case nonce = "oauth_nonce"
        case signatureMethod = "oauth_signature_method"
        case timestamp = "oauth_timestamp"
        case signature = "oauth_signature"
        case token = "oauth_token"
    }
}

extension Authenticator.OAuth.Header {
    static func authorizationHeader(consumerCredentials: Authenticator.Credentials, oauthCredentials: Authenticator.Credentials?) -> URLRequestHTTPHeader {
        if let oauthAccessToken = oauthCredentials?.key, let oauthTokenSecret = oauthCredentials?.secret {
            return self.authorizationHeader(consumerKey: consumerCredentials.key, consumerSecret: consumerCredentials.secret, oauthTokenSecret: oauthTokenSecret, oauthAccessToken: oauthAccessToken)
        } else if let oauthTokenSecret = oauthCredentials?.secret {
            return self.authorizationHeader(consumerKey: consumerCredentials.key, consumerSecret: consumerCredentials.secret, oauthTokenSecret: oauthTokenSecret)
        } else {
            return self.authorizationHeader(consumerKey: consumerCredentials.key, consumerSecret: consumerCredentials.secret)
        }
    }

    static func authorizationHeader(consumerKey: String, consumerSecret: String, oauthTokenSecret: String = "", oauthAccessToken: String? = nil) -> URLRequestHTTPHeader {
        var authorization = URLRequestHTTPHeader()
        authorization.setValue(version.header(value: "1.0"))
        authorization.setValue(signatureMethod.header(value: "PLAINTEXT"))
        authorization.setValue(timestamp.header(value: String(Date().timeIntervalSince1970 / 1000)))
        authorization.setValue(nonce.header(value: String(Int.random(in: 0 ..< 10000))))

        authorization.setValue(self.consumerKey.header(value: consumerKey))
        authorization.setValue(signature.header(value: "\(consumerSecret)&\(oauthTokenSecret)"))

        if let oauthAccessToken = oauthAccessToken {
            authorization.setValue(token.header(value: oauthAccessToken))
        }

        return ["Authorization" : "OAuth \(authorization.map{ "\($0)=\"\($1)\"" }.joined(separator: ","))"]
    }
}

public extension Authenticator.OAuth {
    struct RequestTokenResponse: Decodable, Hashable {
        public let loginURL: String
        public let oauthToken: String
        public let oauthTokenSecret: String
        public let oauthCallbackConfirmed: Bool
        public let oauthConsumerKey: String
        public let oauthCallback: String

        enum CodingKeys: String, CodingKey {
            case loginURL = "login_url"
            case oauthToken = "oauth_token"
            case oauthTokenSecret = "oauth_token_secret"
            case oauthCallbackConfirmed = "oauth_callback_confirmed"
            case oauthConsumerKey = "oauth_consumer_key"
            case oauthCallback = "oauth_callback"
        }

        public init?(with response: Data) {
            guard let response = String(data: response, encoding: .utf8) else { return nil }
            self.init(with: response)
        }

        public init?(with response: String) {
            let response = response.split(separator: "&").reduce([:]) { (result, substring) -> [RequestTokenResponse.CodingKeys: String] in
                var result = result
                let keyValue = substring.split(separator: "=")
                if
                    let key = keyValue.first?.removingPercentEncoding,
                    let codingKey = RequestTokenResponse.CodingKeys(stringValue: key),
                    let value = keyValue.last?.removingPercentEncoding {
                    result[codingKey] = value
                }
                return result
            }

            self.init(with: response)
        }

        init?(with response: [CodingKeys: String]) {
            guard let loginURL = response[.loginURL] else { return nil }
            guard let oauthToken = response[.oauthToken] else { return nil }
            guard let oauthTokenSecret = response[.oauthTokenSecret] else { return nil }
            guard let oauthCallBackConfirmedString = response[.oauthCallbackConfirmed], let oauthCallbackConfirmed = Bool(oauthCallBackConfirmedString) else { return nil }
            guard let oauthConsumerKey = response[.oauthConsumerKey] else { return nil }
            guard let oauthCallback = response[.oauthCallback] else { return nil }

            self.loginURL = loginURL
            self.oauthToken = oauthToken
            self.oauthTokenSecret = oauthTokenSecret
            self.oauthCallbackConfirmed = oauthCallbackConfirmed
            self.oauthConsumerKey = oauthConsumerKey
            self.oauthCallback = oauthCallback
        }
    }
}