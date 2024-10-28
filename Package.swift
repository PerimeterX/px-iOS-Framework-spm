// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let PerimeterX_SDK = Target.binaryTarget(
  name: "PerimeterX_SDK",
  url: "https://github.com/PerimeterX/px-iOS-Framework/releases/download/3.0.7/PerimeterX_SDK.xcframework.zip",
  checksum: "847176e7e9b0a1a7bde4f6254d48e5991e5c60cd832b8478e2c7f62a86baaa27"
)

let package = Package(
  name: "PerimeterX_SDK",
  platforms: [.iOS(.v11)],
  products: [
    .library(
        name: "PerimeterX_SDK",
        targets: ["PerimeterX_SDK"]
    )
  ],
  targets: [
    PerimeterX_SDK,
    .target(
        name: "PerimeterX_SDK_Stub",
        path: "Sources",
        resources: [
            .copy("Resources/PrivacyInfo.xcprivacy")
        ]
    ),
  ]
)
