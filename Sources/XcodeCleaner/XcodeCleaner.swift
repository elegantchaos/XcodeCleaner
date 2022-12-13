// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 13/12/2022.
//  All code (c) 2022 - present day, Sam Deane.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation
import RegexBuilder


/*
SwiftCompile normal x86_64 Compiling\ SemanticVersion.swift /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/SourcePackages/checkouts/SemanticVersion/Sources/SemanticVersion/SemanticVersion.swift (in target 'SemanticVersion' from project 'SemanticVersion')
    cd /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/SourcePackages/checkouts/SemanticVersion
    builtin-swiftTaskExecution -- /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-frontend -frontend -c /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/SourcePackages/checkouts/SemanticVersion/Sources/SemanticVersion/SemanticVersion.swift -emit-module-path /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/Objects-normal/x86_64/SemanticVersion.swiftmodule -emit-module-doc-path /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/Objects-normal/x86_64/SemanticVersion.swiftdoc -emit-module-source-info-path /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/Objects-normal/x86_64/SemanticVersion.swiftsourceinfo -emit-dependencies-path /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/Objects-normal/x86_64/SemanticVersion-master.d -serialize-diagnostics-path /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/Objects-normal/x86_64/SemanticVersion-master.dia -emit-objc-header-path /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/Objects-normal/x86_64/SemanticVersion-Swift.h -emit-abi-descriptor-path /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/Objects-normal/x86_64/SemanticVersion.abi.json -target x86_64-apple-ios13.1-macabi -enable-objc-interop -stack-check -sdk /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.1.sdk -I /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/BuildProductsPath/Release-maccatalyst -I /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/usr/lib -F /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/BuildProductsPath/Release-maccatalyst -Fsystem /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.1.sdk/System/iOSSupport/System/Library/Frameworks -F /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks -no-color-diagnostics -g -module-cache-path /Users/sam/Library/Developer/Xcode/DerivedData/ModuleCache.noindex -swift-version 5 -enforce-exclusivity\=checked -O -D SWIFT_PACKAGE -D Xcode -serialize-debugging-options -empty-abi-descriptor -Xcc -working-directory -Xcc /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/SourcePackages/checkouts/SemanticVersion -resource-dir /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift -Xcc -I/Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/swift-overrides.hmap -Xcc -I/Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/BuildProductsPath/Release-maccatalyst/include -Xcc -isystem -Xcc /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.1.sdk/System/iOSSupport/usr/include -Xcc -I/Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/DerivedSources-normal/x86_64 -Xcc -I/Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/DerivedSources/x86_64 -Xcc -I/Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/DerivedSources -Xcc -DSWIFT_PACKAGE -module-name SemanticVersion -frontend-parseable-output -disable-clang-spi -target-sdk-version 16.2 -prebuilt-module-cache-path /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/macosx/prebuilt-modules/13.1 -parse-as-library -num-threads 8 -o /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/Objects-normal/x86_64/SemanticVersion.o -index-unit-output-path /SemanticVersion.build/Release-maccatalyst/SemanticVersion.build/Objects-normal/x86_64/SemanticVersion.o
*/

protocol CodeMatcher {
    func output(_ line: String) -> String?
}

class CompilePattern: CodeMatcher {
    var compiled: Set<String> = []

    func output(_ line: String) -> String? {
        let pattern = #/
        SwiftCompile .* Compiling\\\s
        (?<name> .*?).swift
        /#
        
        
        guard let match = try? pattern.firstMatch(in: line) else { return nil }
        let name = String(match.output.name)
        if compiled.contains(name) {
            return nil
        }

        let output = "Compiling \(name).swift"
        compiled.insert(name)
        return output
    }
}

struct XcodeCleaner {
    
    let matchers: [any CodeMatcher] = [
        CompilePattern()
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
