// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SalinaCompanionModels",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [
        .library(name: "SalinaCompanionModels", targets: ["SalinaCompanionModels"])
    ],
    dependencies: [],
    targets: [
        .target(name: "SalinaCompanionModels")
    ]
)
