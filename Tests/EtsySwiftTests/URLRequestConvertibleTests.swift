@testable import EtsySwift
import XCTest

final class URLRequestConvertibleTests: XCTestCase {

}

final class HTTPHeaderTests: XCTestCase {
    func test_addValue() {
        var dependency = HTTPHeader()
        dependency.addValue(["headerKey": "foo"])
        dependency.addValue(["headerKey": "bar"])
        let subject = dependency["headerKey"]
        let expectation = "foo,bar"

        XCTAssertEqual(subject, expectation)
    }

    func test_setValue() {
        var dependency = HTTPHeader()
        dependency.addValue(["headerKey": "foo"])
        dependency.addValue(["headerKey": "bar"])
        dependency.setValue(["headerKey": "baz"])
        let subject = dependency["headerKey"]
        let expectation = "baz"

        XCTAssertEqual(subject, expectation)
    }

    static var allTests = [
        ("test_addValue", test_addValue),
        ("test_setValue", test_setValue),
    ]
}
