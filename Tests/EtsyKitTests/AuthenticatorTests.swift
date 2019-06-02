@testable import EtsyKit
import XCTest

struct TokenResponse: EtsyKit.TokenResponse {
    enum CodingKeys: String, CodingKey {
        case oauthToken
        case oauthTokenSecret
    }
    let oauthToken: String
    let oauthTokenSecret: String
}

final class AuthenticatorTests: XCTestCase {
    func test_upgrade() {
        let subject = Authenticator(key: "foo", secret: "bar")
        XCTAssertNil(subject.oauthCredentials)
        subject.upgrade(tokenResponse: TokenResponse(oauthToken: "batz", oauthTokenSecret: "yolo"))
        XCTAssertNotNil(subject.oauthCredentials)
        XCTAssertEqual("batz", subject.oauthCredentials?.key)
        XCTAssertEqual("yolo", subject.oauthCredentials?.secret)
    }

    func test_authenticate_consumer_only() {
        let authenticator = Authenticator(key: "foo", secret: "bar")

        var subject = URLRequest(url: URL(string: "http://localhost")!)
        subject = authenticator.authenticate(request: subject)
        XCTAssertTrue(subject.value(forHTTPHeaderField: "Authorization")!.contains("oauth_consumer_key=\"foo\""))
        XCTAssertTrue(subject.value(forHTTPHeaderField: "Authorization")!.contains("oauth_signature=\"bar&\""))
    }

    func test_authenticate() {
        let authenticator = Authenticator(key: "foo", secret: "bar")
        authenticator.upgrade(tokenResponse: TokenResponse(oauthToken: "batz", oauthTokenSecret: "yolo"))

        var subject = URLRequest(url: URL(string: "http://localhost")!)
        subject = authenticator.authenticate(request: subject)
        XCTAssertTrue(subject.value(forHTTPHeaderField: "Authorization")!.contains("oauth_consumer_key=\"foo\""))
        XCTAssertTrue(subject.value(forHTTPHeaderField: "Authorization")!.contains("oauth_signature=\"bar&yolo\""))
        XCTAssertTrue(subject.value(forHTTPHeaderField: "Authorization")!.contains("oauth_token=\"batz\""))
    }

    static var allTests = [
        ("test_upgrade", test_upgrade),
        ("test_authenticate_consumer_only", test_authenticate_consumer_only),
        ("test_authenticate", test_authenticate),
    ]
}

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