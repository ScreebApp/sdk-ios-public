// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Screeb",
    platforms: [
        .iOS(.v11)
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
            url: "https://github.com/ScreebApp/sdk-ios-public/releases/download/2.1.7/Screeb.zip",
            checksum: "e0aa7ab8297ee42cfa5d8ac228f35b50a8d46a6b404c5dd92603eb8bcfde01b8"
        )
    ]
)
