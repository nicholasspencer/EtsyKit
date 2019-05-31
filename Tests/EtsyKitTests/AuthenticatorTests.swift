@testable import EtsyKit
import XCTest

final class AuthenticatorScopeTests: XCTestCase {
    func test_queryParameter() {
        let subject = Authenticator.Scope.queryString([.listingsRead, .listingsWrite])
        let expectation = "listings_r listings_w"
        XCTAssertEqual(subject, expectation)
    }

    func test_array_queryParameter() {
        let subject = [.listingsRead, .listingsWrite].queryString
        let expectation = "listings_r listings_w"
        XCTAssertEqual(subject, expectation)
    }

    static var allTests = [
        ("test_queryParameter", test_queryParameter),
        ("test_array_queryParameter", test_array_queryParameter),
    ]
}

final class AuthenticatorOAuthTests: XCTestCase {
    func test_URL_requestToken() {
        let subject = Authenticator.OAuth.requestToken(scope: [.listingsRead, .listingsWrite], oauthCallback: URL(string: "app://something")!).urlString
        let expectation = "https://openapi.etsy.com/v2/oauth/request_token?scope=listings_r%20listings_w&oauth_callback=app://something"
        XCTAssertEqual(subject, expectation)
    }

    func test_URL_accessToken() {
        let subject = Authenticator.OAuth.accessToken(oauthVerifier: "foo").urlString
        let expectation = "https://openapi.etsy.com/v2/oauth/access_token?oauth_verifier=foo"
        XCTAssertEqual(subject, expectation)
    }

    static var allTests = [
        ("test_URL_requestToken", test_URL_requestToken),
        ("test_URL_accessToken", test_URL_accessToken),
    ]
}

extension Authenticator.OAuth.RequestTokenResponse {
    static let testString = "login_url=LOGIN%20URL&oauth_token=OAUTH%20TOKEN&oauth_token_secret=OAUTH%20TOKEN%20SECRET&oauth_callback_confirmed=true&oauth_consumer_key=OAUTH%20CONSUMER%20KEY&oauth_callback=OAUTH%20CALLBACK"
    init?(testExpecation: Void) {
        let response: [CodingKeys: String] = [
            .loginURL: "LOGIN URL",
            .oauthToken: "OAUTH TOKEN",
            .oauthTokenSecret: "OAUTH TOKEN SECRET",
            .oauthCallbackConfirmed: "true",
            .oauthConsumerKey: "OAUTH CONSUMER KEY",
            .oauthCallback: "OAUTH CALLBACK",
        ]
        self.init(with: response)
    }
}

final class AuthenticatorOAuthRequestTokenResponseTest: XCTestCase {
    func test_initWithData() {
        let dependency = Authenticator.OAuth.RequestTokenResponse.testString.data(using: .utf8)!
        let subject = Authenticator.OAuth.RequestTokenResponse(with: dependency)
        let expectation = Authenticator.OAuth.RequestTokenResponse(testExpecation: ())
        XCTAssertEqual(subject, expectation)
    }

    func test_initWithString() {
        let dependency = Authenticator.OAuth.RequestTokenResponse.testString
        let subject = Authenticator.OAuth.RequestTokenResponse(with: dependency)
        let expectation = Authenticator.OAuth.RequestTokenResponse(testExpecation: ())
        XCTAssertEqual(subject, expectation)
    }
}