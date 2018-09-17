// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "ConfigDemo",
    products: [
        .executable(name: "configdemo", targets: ["ConfigDemo"]),
        .library(name: "ConfigDemoKit", targets: ["ConfigDemoKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/kiliankoe/CLISpinner.git", .upToNextMinor(from: "0.3.5")),
        .package(url: "https://github.com/Flinesoft/HandySwift.git", .upToNextMajor(from: "2.6.0")),
        .package(url: "https://github.com/onevcat/Rainbow.git", .upToNextMajor(from: "3.1.4")),
        .package(url: "https://github.com/jakeheis/SwiftCLI", .upToNextMajor(from: "5.1.2"))
    ],
    targets: [
        .target(
            name: "ConfigDemo",
            dependencies: ["ConfigDemoKit"],
            path: "Sources/ConfigDemo"
        ),
        .target(
            name: "ConfigDemoKit",
            dependencies: [
                "CLISpinner",
                "HandySwift",
                "Rainbow",
                "SwiftCLI"
            ],
            path: "Sources/ConfigDemoKit"
        ),
        .testTarget(
            name: "ConfigDemoKitTests",
            dependencies: ["ConfigDemoKit", "HandySwift"],
            path: "Tests/ConfigDemoKitTests"
        )
    ]
)
