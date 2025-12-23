# SalinaCompanionModels

A lightweight Swift package that provides shared model types and utilities for Salina Companion apps. Designed for reuse across iOS and macOS targets, with a focus on clarity, testability, and Swift concurrency.

- Swift Package Manager compatible
- Platforms: iOS 16+, macOS 13+
- Minimum Swift tools: 5.10

## Requirements

- Swift 5.10+
- iOS 16.0+ or macOS 13.0+

These requirements match the settings in `Package.swift`.

## Installation

### Xcode (Recommended)

1. In Xcode, open your project.
2. Go to File > Add Package Dependencies…
3. Enter the repository URL for this package.
4. Choose the latest version and add the library product `SalinaCompanionModels` to your target.

### Swift Package Manager (Package.swift)

Add the package to your dependencies and the product to your target:

```swift
// In your Package.swift
.dependencies: [
    .package(url: "https://github.com/your-org/SalinaCompanionModels.git", from: "1.0.0")
],
.targets: [
    .target(
        name: "YourAppOrModule",
        dependencies: [
            .product(name: "SalinaCompanionModels", package: "SalinaCompanionModels")
        ]
    )
]
