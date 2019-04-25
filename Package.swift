// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Etsy.swift",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "EtsySwift", targets: ["EtsySwift"]),
        .library(name: "EtsyTypeKit", targets: ["EtsyTypeKit"]),
        .library(name: "EtsyStencilKit", targets: ["EtsyStencilKit"]),
    ],
    dependencies: [
        // Dev deps
        .package(url: "https://github.com/nicklockwood/SwiftFormat.git", from: "0.40.8"),
        .package(url: "https://github.com/Realm/SwiftLint.git", from: "0.31.0"),
        .package(url: "https://github.com/stencilproject/Stencil.git", from: "0.13.1"),
        .package(url: "https://github.com/nicholasspencer/StencilSwiftKit.git", .branch("master")),
        .package(url: "https://github.com/SwiftGen/SwiftGen.git", from: "6.1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "EtsySwift", dependencies: [
            "EtsyTypeKit",
        ]),
        .target(name: "EtsyTypeKit", dependencies: [
            "EtsyStencilKit",
        ]),
        .target(name: "EtsyStencilKit", dependencies: [
            "Stencil",
            "StencilSwiftKit",
            "SwiftGenKit",
        ]),
        .testTarget(name: "EtsySwiftTests", dependencies: ["EtsySwift"]),
    ]
)
