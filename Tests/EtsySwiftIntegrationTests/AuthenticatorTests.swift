@testable import EtsySwift
import XCTest

final public class AuthenticatorTests: XCTestCase {
    func test_authenticate() {
        var authenticator = Authenticator(key: testCredentials.key, secret: testCredentials.secret)
    }

    static var allTests = [
        ("test_authenticate", test_authenticate),
    ]
}