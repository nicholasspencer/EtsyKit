import Foundation

public final class Authenticator {
    let consumerKey: String
    let consumersecret: String

    init(key: String, secret: String) {
        self.consumerKey = key
        self.consumersecret = secret
    }
}

public extension Authenticator {
    func authenticate(scope: [Scope], oauthCallback: URL? = nil, result: Result<Any, Error>) {

    }
}

extension Authenticator {
    enum OAuth {
        case requestToken(scope: [Scope], oauthCallback: URL)
        case accessToken(oauthVerifier: String)
    }

    enum OAuthHeader: String {
        case version = "oauth_version"
        case consumerKey = "oauth_consumer_key"
        case nonce = "oauth_nonce"
        case signatureMethod = "oauth_signature_method"
        case timestamp = "oauth_timestamp"
        case signature = "oauth_signature"
        case token = "oauth_token"

        static func authorizationHeader(consumerKey: String, accessToken: String, accessTokenSecret: String) {

        }
    }
}

extension Authenticator.OAuth {
    enum QueryParameters: String {
        case scope
        case oauthCallback = "oauth_callback"
        case oauthVerifier = "oauth_verifier"
    }

    var URL: URL {
        return Foundation.URL.baseURL.appendingPathComponent(self.URLPathString)
    }

    var URLPathString: String {
        switch self {
        case .requestToken:
            return "oauth/request_token"
        case .accessToken:
            return "oauth/access_token"
        }
    }

    var parameters: [String: String] {
        switch self {
        case .requestToken(let scope, let oauthCallback):
            return [
                QueryParameters.scope.rawValue: scope.queryString, 
                QueryParameters.oauthCallback.rawValue: oauthCallback.absoluteString
            ]
        case .accessToken(let oauthVerifier):
            return [
                QueryParameters.oauthVerifier.rawValue: oauthVerifier
            ]
        }
    }
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