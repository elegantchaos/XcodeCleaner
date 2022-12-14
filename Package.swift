// swift-tools-version:5.7

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 13/12/2022.
//  All code (c) 2022 - present day, Sam Deane.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import PackageDescription

let package = Package(
    name: "XcodeCleaner",

    platforms: [
        .macOS(.v13)
    ],

    products: [
        .library(
            name: "XcodeCleaner",
            targets: ["XcodeCleaner"]
        ),
    ],
    
    dependencies: [
        // testing support
        .package(url: "https://github.com/elegantchaos/XCTestExtensions.git", from: "1.4.2"),
        
        // tools
//        .package(url: "https://github.com/elegantchaos/ActionBuilderPlugin.git", from: "1.0.7"),
//        .package(url: "https://github.com/elegantchaos/SwiftFormatterPlugin.git", from: "1.0.3"),
    ],
    
    targets: [
        .target(
            name: "XcodeCleaner",
            dependencies: [
            ]
        ),
        
        .testTarget(
            name: "XcodeCleanerTests",
            dependencies: [
                "XcodeCleaner",
                "XCTestExtensions"
            ],
            resources: [
                .copy("Example.txt")
                
            ]
        ),
    ]
)
