// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 13/12/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

/*
Ld /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/ThreadExtensions.build/Release-maccatalyst/ThreadExtensions.build/Objects-normal/x86_64/Binary/ThreadExtensions.o normal x86_64 (in target 'ThreadExtensions' from project 'ThreadExtensions')
    cd /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/SourcePackages/checkouts/ThreadExtensions
    /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -target x86_64-apple-ios13.1-macabi -r -isysroot /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.1.sdk -L/Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/EagerLinkingTBDs -L/Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/BuildProductsPath/Release-maccatalyst -L/Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.1.sdk/System/iOSSupport/usr/lib -L/Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/maccatalyst -L/Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/usr/lib -L/Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.1.sdk/System/iOSSupport/usr/lib -L/Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/maccatalyst -F/Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/EagerLinkingTBDs -F/Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/BuildProductsPath/Release-maccatalyst -iframework /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.1.sdk/System/iOSSupport/System/Library/Frameworks -iframework /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks -iframework /Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.1.sdk/System/iOSSupport/System/Library/Frameworks -filelist /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/ThreadExtensions.build/Release-maccatalyst/ThreadExtensions.build/Objects-normal/x86_64/ThreadExtensions.LinkFileList -nostdlib -Xlinker -object_path_lto -Xlinker /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/ThreadExtensions.build/Release-maccatalyst/ThreadExtensions.build/Objects-normal/x86_64/ThreadExtensions_lto.o -fobjc-link-runtime -L/Applications/Xcode-14.2.0-Release.Candidate.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/macosx -L/System/iOSSupport/usr/lib/swift -L/usr/lib/swift -Xlinker -add_ast_path -Xlinker /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/ThreadExtensions.build/Release-maccatalyst/ThreadExtensions.build/Objects-normal/x86_64/ThreadExtensions.swiftmodule -Xlinker -dependency_info -Xlinker /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/ThreadExtensions.build/Release-maccatalyst/ThreadExtensions.build/Objects-normal/x86_64/ThreadExtensions_dependency_info.dat -o /Users/sam/Library/Developer/Xcode/DerivedData/ActionStatus-gkxarhrpqjjdsrdrsgdsyenbdelw/Build/Intermediates.noindex/ArchiveIntermediates/ActionStatus/IntermediateBuildFilesPath/ThreadExtensions.build/Release-maccatalyst/ThreadExtensions.build/Objects-normal/x86_64/Binary/ThreadExtensions.o
*/


class LinkMatcher: CodeMatcher {
    var compiled: Set<String> = []

    func output(_ line: String) -> String? {
        let pattern = #/
        Ld \s .* \/
        (?<name> .*?)\.o
        /#
        
        
        guard let match = try? pattern.firstMatch(in: line) else { return nil }
        let name = String(match.output.name)
        if compiled.contains(name) {
            return nil
        }

        let output = "Linking \(name)"
        compiled.insert(name)
        return output
    }
}