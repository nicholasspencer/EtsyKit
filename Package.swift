// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EtsyKit",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "EtsyKit", targets: ["EtsyKit"]),
        .library(name: "EtsyTypeKit", targets: ["EtsyTypeKit"]),
        .library(name: "EtsyRequestKit", targets: ["EtsyRequestKit"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "EtsyKit", dependencies: [
            "EtsyTypeKit",
            "EtsyRequestKit",
        ]),
        .target(name: "EtsyTypeKit", dependencies: []),
        .target(name: "EtsyRequestKit", dependencies: [
            "EtsyTypeKit",
        ]),
        .testTarget(name: "EtsyKitTests", dependencies: ["EtsyKit"]),
    ]
)

// Developer Tooling

package.dependencies.append(contentsOf: [
    // Dev deps
    .package(url: "https://github.com/nicklockwood/SwiftFormat.git", .upToNextMajor(from: "0.40.8")),
    .package(url: "https://github.com/Realm/SwiftLint.git", .upToNextMajor(from: "0.31.0")),
    .package(url: "https://github.com/stencilproject/Stencil.git", .upToNextMajor(from: "0.13.1")),
    .package(url: "https://github.com/nicholasspencer/StencilSwiftKit.git", .branch("ExtensionScope")),
    .package(url: "https://github.com/SwiftGen/SwiftGen.git", .upToNextMajor(from: "6.1.0")),

])

package.targets.append(contentsOf: [
    .target(name: "EtsyKitTooling", dependencies: [
        "SwiftFormat",
        "SwiftLintFramework",
        "Stencil",
        "StencilSwiftKit",
        "SwiftGenKit",
    ])
])