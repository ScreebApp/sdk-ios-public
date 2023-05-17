// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Screeb",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Screeb",
            targets: ["ScreebTarget"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "Alamofire",url: "https://github.com/Alamofire/Alamofire.git", from: "5.4.0"),
		.package(name: "Starscream",url: "https://github.com/daltoniam/Starscream.git", from: "4.0.0"),
		.package(name: "Kingfisher",url: "https://github.com/onevcat/Kingfisher.git", from: "7.0.0"),
		.package(name: "KeyboardGuide",url: "https://github.com/niw/KeyboardGuide.git", from: "0.2.1"),
    ],
    targets: [
        .target(
            name: "ScreebTarget",
            dependencies: [.target(name: "BinaryFrameworkWrapper")],
            path: "Sources/Screeb"),
        .target(name: "BinaryFrameworkWrapper",
               dependencies: [
                .target(name: "Screeb"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "Starscream", package: "Starscream"),
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "KeyboardGuide", package: "KeyboardGuide")
               ],
               path: "Sources/BinaryFramework"),
        .binaryTarget(
            name: "Screeb",
            url: "https://github.com/ScreebApp/sdk-ios-public/releases/download/1.13.1/Screeb.zip",
            checksum: "dd5fcd229b285aa688cd8952750a1b086bcb8398b4d9455189dd3da865728ff4"
        )
    ]
)
