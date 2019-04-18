// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Etsy.swift",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "Etsy.swift", targets: ["Etsy.swift"]),
    ],
    dependencies: [
        // Dev deps
        .package(
        .package(url: "https://github.com/nicklockwood/SwiftFormat.git", from: "0.35.8"),
        .package(url: "https://github.com/Realm/SwiftLint.git", from: "0.28.1"),
//        .package(url: "https://github.com/orta/Komondor", from: "1.0.2"),
        .Package(url: "https://github.com/stencilproject/Stencil.git", majorVersion: 0, minor: 13),

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "Etsy.swift", dependencies: []),
        .testTarget(name: "Etsy.swiftTests", dependencies: ["Etsy.swift"]),
    ]
)

#if canImport(PackageConfig)
import PackageConfig

let config = PackageConfig([
    "komondor": [
        "pre-commit": [
            "git diff --cached --name-only | xargs git diff | md5 > .pre_format_hash",
            "swift run swiftformat .",
            "swift run swiftlint autocorrect --path Etsy.swift/",
            "git diff --cached --name-only | xargs git diff | md5 > .post_format_hash",
            "diff .pre_format_hash .post_format_hash > /dev/null || { echo \"Staged files modified during commit\" ; rm .pre_format_hash ; rm .post_format_hash ; exit 1; }",
            "rm .pre_format_hash ; rm .post_format_hash",
        ],
    ],
    ])
#endif
