// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ForceUpdateKit",
    products: [
        .library(
            name: "ForceUpdateKit",
            targets: ["ForceUpdateKit"]),
    ],
    targets: [
        .target(
            name: "ForceUpdateKit",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "ForceUpdateKitTests",
            dependencies: ["ForceUpdateKit"]),
    ]
)
