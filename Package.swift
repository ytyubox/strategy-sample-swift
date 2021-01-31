// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "strategy-sample-swift",
    products: [
        .library(
            name: "strategy-sample-swift",
            targets: ["strategy-sample-swift"]
        ),
    ],
    targets: [
        .target(
            name: "strategy-sample-swift",
            dependencies: []
        ),
        .testTarget(
            name: "strategy-sample-swiftTests",
            dependencies: ["strategy-sample-swift"]
        ),
    ]
)
