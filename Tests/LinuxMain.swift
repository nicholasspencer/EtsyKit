import EtsySwiftTests
import XCTest

var tests = [XCTestCaseEntry]()
tests += AuthenticatorScopeTests.allTests()
tests += AuthenticatorOAuthTests.allTests()
XCTMain(tests)
