@testable import EtsySwift
import XCTest

final class URLConvertibleTests: XCTestCase {}

final class URLRequestHeaderTests: XCTestCase {
    func test_addValue() {
        var dependency = URLRequestHeader()
        dependency.addValue(["headerKey": "foo"])
        dependency.addValue(["headerKey": "bar"])
        let subject = dependency["headerKey"]
        let expectation = "foo,bar"

        XCTAssertEqual(subject, expectation)
    }

    func test_setValue() {
        var dependency = URLRequestHeader()
        dependency.addValue(["headerKey": "foo"])
        dependency.addValue(["headerKey": "bar"])
        dependency.setValue(["headerKey": "baz"])
        let subject = dependency["headerKey"]
        let expectation = "baz"

        XCTAssertEqual(subject, expectation)
    }
}
