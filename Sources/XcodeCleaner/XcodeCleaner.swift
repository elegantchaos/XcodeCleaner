// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 13/12/2022.
//  All code (c) 2022 - present day, Sam Deane.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation
import RegexBuilder



protocol CodeMatcher {
    func output(_ line: String) -> String?
}


struct XcodeCleaner {
    
    let matchers: [any CodeMatcher] = [
        CompilePattern(),
        LinkMatcher()
    ]
    
    func clean(_ line: String) -> String? {
        for matcher in matchers {
            if let output = matcher.output(line) {
                return output
            }
        }
        
        return nil
    }
    
    func clean2<T>(lines: AsyncLineSequence<T>) async throws -> AsyncCompactMapSequence<AsyncLineSequence<T>, String>  {
        let outputSequence = lines.compactMap({ line in
            clean(line)
        })
        
        return outputSequence
    }
    
    func clean<T>(lines: T) async throws -> some AsyncSequence where T: AsyncSequence, T.Element == String {
        let outputSequence = lines.compactMap({ line in
            clean(line)
        })
        
        return outputSequence
    }
}
