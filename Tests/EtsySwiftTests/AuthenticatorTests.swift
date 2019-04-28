@testable import EtsySwift
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