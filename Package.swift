// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CRRefresh",
    defaultLocalization: "en",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CRRefresh",
            targets: ["CRRefresh"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CRRefresh",
            path: "CRRefresh/CRRefresh",
            exclude: ["Animators/NormalAnimator/NormalFooter.bundle", "Animators/NormalAnimator/NormalHeader.bundle"],
            resources: [
                .process("Animators/NormalAnimator/NormalFooter.bundle"),
                .process("Animators/NormalAnimator/NormalHeader.bundle")
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency"),
            ],
        ),
        .testTarget(
            name: "CRRefreshTests",
            dependencies: ["CRRefresh"]
        ),
    ]
)
