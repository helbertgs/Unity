// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Unity",
    products: [
        .library(
            name: "Unity", targets: ["Unity"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/helbertgs/swift-math", branch: "main"),
    ],
    targets: [
        .target(
            name: "Unity",
            dependencies: [
                .product(name: "Math", package: "swift-math")
            ]
        ),
        
        .testTarget(
            name: "UnityTests",
            dependencies: [
                .target(name: "Unity"),
                .product(name: "Math", package: "swift-math")
            ]
        ),
    ]
)
