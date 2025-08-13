# PerimeterX iOS SDK for Swift Package Manager

This repository provides Swift Package Manager support for [PerimeterX iOS SDK](https://github.com/PerimeterX/px-iOS-Framework), allowing you to easily integrate the SDK into your iOS application.

### Installing PerimeterX SDK

To install PerimeterX SDK using [Swift Package Manager](https://github.com/apple/swift-package-manager) you can follow the [tutorial published by Apple](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) using the URL for this repository with the current version:

1. In Xcode, select “File” → “Add Packages...”
2. Enter `https://github.com/PerimeterX/px-iOS-Framework-spm.git`

Alternatively, you can add the following dependency to your `Package.swift` file:

```swift
.package(url: "https://github.com/PerimeterX/px-iOS-Framework-spm.git", from: "3.2.8")
```

### Why is there a separate repository for Swift Package Manager support?

The main git repository for [PerimeterX iOS SDK](https://github.com/PerimeterX/px-iOS-Framework) is very large, and Swift Package Manager always downloads the full repository with all git history. This [PerimeterX iOS SDK SPM](https://github.com/PerimeterX/px-iOS-Framework-spm) repository is much smaller, so can be downloaded much more quickly.

Instead of downloading the full git history of PerimeterX iOS SDK and building it from source, this repository just contains a pointer to the precompiled XCFramework included in the [latest PerimeterX iOS SDK release](https://github.com/PerimeterX/px-iOS-Framework/releases/latest). Since [PerimeterX iOS SDK](https://github.com/PerimeterX/px-iOS-Framework) doesn't provide source code it's strongly recommended that users depend on [PerimeterX iOS SDK SPM](https://github.com/PerimeterX/px-iOS-Framework-spm) instead.

When using PerimeterX iOS SDK SPM, the downloaded `PerimeterX_SDK.xcframework` isn't visible in the project navigator. To validate the authenticity of a PerimeterX iOS SDK SPM package, you can confirm that the `Package.swift` file references a binary XCFramework from https://github.com/PerimeterX/px-iOS-Framework/releases. 
