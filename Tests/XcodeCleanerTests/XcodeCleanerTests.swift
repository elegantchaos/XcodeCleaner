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
    
    func testExampleStream() async throws {
        let cleaner = XcodeCleaner()
        let converted = try await cleaner.clean(lines: example)
        var results: [String] = []
        for try await line in converted {
            print(line as! String)
            if let expected = results.popLast() {
                XCTAssertEqual(line as! String, expected)
            }
        }
        XCTAssertTrue(results.isEmpty)
    }
    func testUnknownLine() {
        let cleaner = XcodeCleaner()
        XCTAssertNil(cleaner.clean("test"))
    }
}
