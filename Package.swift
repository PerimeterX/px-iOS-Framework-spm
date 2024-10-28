// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let PerimeterX_SDK = Target.binaryTarget(
  name: "PerimeterX_SDK",
  url: "https://github.com/PerimeterX/px-iOS-Framework/releases/download/3.0.6/PerimeterX_SDK.xcframework.zip",
  checksum: "5c1e29834712521bec039c75c31640b8d685318e78ffd3655d3404cc524e4f6c"
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
