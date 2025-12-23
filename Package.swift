// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Models",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [.library(name: "Models", targets: ["Models"])],
    dependencies: [],
    targets: [.target(name: "Models")]
)
