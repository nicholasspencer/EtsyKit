import Foundation

public final class Authenticator {
    public private(set) var apiCredentials: Credentials?
    public private(set) var oauthCredentials: Credentials?

    public init(credentials: Credentials) {
        self.apiCredentials = credentials
    }
}

public extension Authenticator {
    struct Credentials {
        let key: String
        let secret: String
    }

    convenience init(key: String, secret: String) {
        self.init(credentials: Credentials(key: key, secret: secret))
    }
}

public extension Authenticator {
    func authenticate(scope _: [Scope], oauthCallback _: URL? = nil, result _: Result<Any, Error>) {}
}

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

// MARK: - Internal

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

extension Authenticator {
    enum OAuth {
        case requestToken(scope: [Scope], oauthCallback: URL)
        case accessToken(oauthVerifier: String)
    }
}

extension Authenticator.OAuth: URLConvertible, URLRequestConvertible {
    enum QueryParameters: String, URLQueryItemConvertible {
        case scope
        case oauthCallback = "oauth_callback"
        case oauthVerifier = "oauth_verifier"
    }

    var urlString: String? {
        return url?.absoluteString
    }

    var url: URL? {
        guard let URL = URL.baseURL?.appendingPathComponent(urlPathString) else { return nil }

        var components = URLComponents(url: URL, resolvingAgainstBaseURL: true)
        components?.queryItems = parameters

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

    var parameters: [URLQueryItem] {
        switch self {
        case let .requestToken(scope, oauthCallback):
            return [
                QueryParameters.scope.queryItem(value: scope.queryString),
                QueryParameters.oauthCallback.queryItem(value: oauthCallback.absoluteString),
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
    static func authorizationValues(consumerKey: String, consumerSecret: String, accessTokenSecret: String = "", accessToken: String? = nil) -> URLRequestHTTPHeader {
        var authorization = URLRequestHTTPHeader()
        authorization.setValue(version.header(value: "1.0"))
        authorization.setValue(signatureMethod.header(value: "PLAINTEXT"))
        authorization.setValue(timestamp.header(value: String(Date().timeIntervalSince1970 / 1000)))
        authorization.setValue(nonce.header(value: String(Int.random(in: 0 ..< 10000))))

        authorization.setValue(self.consumerKey.header(value: consumerKey))
        authorization.setValue(signature.header(value: "\(consumerSecret)&\(accessTokenSecret)"))

        if let accessToken = accessToken {
            authorization.setValue(token.header(value: accessToken))
        }

        return authorization
    }

    static func authorizationHeader(consumerKey: String, consumerSecret: String, accessTokenSecret: String = "", accessToken: String? = nil) -> URLRequestHTTPHeader {
        let authorizationValues = self.authorizationValues(consumerKey: consumerKey, consumerSecret: consumerSecret, accessTokenSecret: accessTokenSecret, accessToken: accessToken)
        return ["Authorization" : "OAuth \(authorizationValues.map{ "\($0)=\"\($1)\"" }.joined(separator: ","))"]
    }
}
