// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 13/12/2022.
//  All code (c) 2022 - present day, Sam Deane.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

struct XcodeCleaner {
    func clean(_ line: String) -> String {
        return line
    }
    
    func clean<T>(lines: AsyncLineSequence<T>) async throws -> AsyncMapSequence<AsyncLineSequence<T>, String>  {
        let outputSequence = lines.map({ line in
            clean(line)
        })
        
        return outputSequence
    }
}
