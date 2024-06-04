// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlibabacloudDocMindApi",
    platforms: [.macOS(.v10_15),
                .iOS(.v13),
                .tvOS(.v13),
                .watchOS(.v6)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AlibabacloudDocMindApi",
            targets: ["AlibabacloudDocMindApi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ifbear/darabonba-openapi.git", branch: "master"),
        .package(url: "https://github.com/aliyun/tea-swift.git", from: "1.0.1"),
        .package(url: "https://github.com/alibabacloud-sdk-swift/tea-utils", from: "1.0.5"),
        .package(url: "https://github.com/ifbear/openapi-util", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AlibabacloudDocMindApi",
            dependencies: [
                .product(name: "Tea", package: "tea-swift"),
                .product(name: "TeaUtils", package: "tea-utils"),
                .product(name: "AlibabacloudOpenApi", package: "darabonba-openapi"),
                .product(name: "AlibabaCloudOpenApiUtil", package: "openapi-util")
            ]),
        .testTarget(
            name: "AlibabacloudDocMindApiTests",
            dependencies: ["AlibabacloudDocMindApi"]),
    ]
)
