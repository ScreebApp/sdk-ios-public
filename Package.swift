// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Screeb",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Screeb",
            targets: ["ScreebTarget"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ScreebTarget",
            dependencies: [.target(name: "BinaryFrameworkWrapper")],
            path: "Sources/Screeb"),
        .target(name: "BinaryFrameworkWrapper",
               dependencies: [
                .target(name: "Screeb")
               ],
               path: "Sources/BinaryFramework"),
        .binaryTarget(
            name: "Screeb",
            url: "https://github.com/ScreebApp/sdk-ios-public/releases/download/5.0.0/Screeb.zip",
            checksum: "8f409bb20f269ed365156c8b1ea4e1c3836f2c5f8d34a8962eaee92007c097c7"
        )
    ]
)
