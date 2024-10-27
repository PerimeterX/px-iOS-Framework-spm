// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let PerimeterX_SDK = Target.binaryTarget(
  name: "PerimeterX_SDK",
  url: "https://github.com/PerimeterX/px-iOS-Framework/releases/download/3.0.0/PerimeterX_SDK.xcframework.zip",
  checksum: "743439e13ebbb9dc0bb75906daaebcb70aef8d7144355ebb1c8f51b29c91f79d"
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
        name: "PerimeterX_SDK",
        path: "Sources",
        resources: [
            .copy("Resources/PrivacyInfo.xcprivacy")
        ]
    ),
  ]
)
