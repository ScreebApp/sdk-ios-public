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
            url: "https://github.com/ScreebApp/sdk-ios-public/releases/download/3.0.2/Screeb.zip",
            checksum: "c93dd5d096dbdeef2c2aecc01901c5365869a8acbaae6d8d8a5b158fc6bd9450"
        )
    ]
)
