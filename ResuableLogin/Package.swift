// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ReusableLogin",
    platforms: [
        .iOS(.v14) // or later
    ],
    products: [
        .library(
            name: "ReusableLogin",
            targets: ["ReusableLogin"]),
    ],
    targets: [
        .target(
            name: "ReusableLogin",
            dependencies: [],
            resources: [
                .process("Resources") // include xibs/storyboards/images
            ]),
        .testTarget(
            name: "ReusableLoginTests",
            dependencies: ["ReusableLogin"]),
    ]
)
