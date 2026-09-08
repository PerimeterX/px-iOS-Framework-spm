// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let PerimeterX_SDK = Target.binaryTarget(
  name: "PerimeterX_SDK",
  url: "https://github.com/PerimeterX/px-iOS-Framework/releases/download/3.2.12/PerimeterX_SDK.xcframework.zip",
  checksum: "f85d74fb345faca1ff1d9da0d3653e0b5a08ea651416d3cedfc45226ffb02758"
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
