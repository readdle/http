#if os(Linux) || os(Android)

import XCTest
@testable import HTTPTests
XCTMain([
    testCase(HTTPTests.allTests),
    testCase(HTTPClientTests.allTests),
])

#endif
