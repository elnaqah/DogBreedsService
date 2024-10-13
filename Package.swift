// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DogBreedsService",
    platforms: [.macOS(.v14)],
    products: [
        .executable(name: "DogBreedsService", targets: ["DogBreedsService"])
    ],
    dependencies: [
        .package(url: "https://github.com/hummingbird-project/hummingbird.git", exact: "2.1.0"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", exact: "1.5.0")
    ],
    targets: [
        .executableTarget(
            name: "DogBreedsService",
            dependencies: [
                .product(name: "Hummingbird", package: "hummingbird"),
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .testTarget(
            name: "DogBreedsServiceTests",
            dependencies: [
                "DogBreedsService",
                .product(name: "Hummingbird", package: "hummingbird")
            ]
        )
    ]
)
