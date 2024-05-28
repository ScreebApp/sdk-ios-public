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
            url: "https://github.com/ScreebApp/sdk-ios-public/releases/download/2.1.0/Screeb.zip",
            checksum: "2aaede99d117a2de7b63f38d5b9a56621322b30f923f7f89f6b1ba527cd929f5"
        )
    ]
)
