import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Etsy_swiftTests.allTests),
    ]
}
#endif