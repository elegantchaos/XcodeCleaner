// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 13/12/2022.
//  All code (c) 2022 - present day, Sam Deane.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import XCTest
import XCTestExtensions

@testable import XcodeCleaner

final class XcodeCleanerTests: XCTestCase {
    var example: AsyncLineSequence<URL.AsyncBytes> {
        let url = Bundle.module.url(forResource: "Example", withExtension: "txt")
        let example = url!.lines
        return example
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let cleaner = XcodeCleaner()
        XCTAssertEqual(cleaner.clean(lines: ["test"]), ["test"])
    }
}
