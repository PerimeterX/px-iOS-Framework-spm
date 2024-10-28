// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let PerimeterX_SDK = Target.binaryTarget(
  name: "PerimeterX_SDK",
  url: "https://github.com/PerimeterX/px-iOS-Framework/releases/download/3.2.1/PerimeterX_SDK.xcframework.zip",
  checksum: "7275793c377944bd0225aacfd31cd2ba834415a4917b625b4b6e7f36ebd0e9be"
)

let package = Package(
  name: "PerimeterX_SDK",
  platforms: [.iOS(.v12)],
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
