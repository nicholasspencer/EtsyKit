import XCTest
import EtsySwiftTests

var tests = [XCTestCaseEntry]()
tests += AuthenticatorScopeTests.allTests()
tests += AuthenticatorOAuthTests.allTests()
XCTMain(tests)
