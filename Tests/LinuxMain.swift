import XCTest
import EtsySwiftTests

var tests = [XCTestCaseEntry]()
tests += AuthenticatorTests.allTests()
XCTMain(tests)
