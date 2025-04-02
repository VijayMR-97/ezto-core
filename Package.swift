// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EztoCore",
    products: [
        .library(
            name: "EztoCore",
            targets: ["EztoCore"]),
    ],
    targets: [
        .binaryTarget(
            name: "EztoVerifyCore",
            path: "./EztoVerifyCore.xcframework"
        ),
        .target(
            name: "EztoCore",
            dependencies: [
                .target(name: "EztoVerifyCore"),
            ],
            path: "Sources"
        ),
    ]
)