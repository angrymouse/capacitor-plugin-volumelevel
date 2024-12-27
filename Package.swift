// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorPluginVolumelevel",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorPluginVolumelevel",
            targets: ["VolumeLevelPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "VolumeLevelPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/VolumeLevelPlugin"),
        .testTarget(
            name: "VolumeLevelPluginTests",
            dependencies: ["VolumeLevelPlugin"],
            path: "ios/Tests/VolumeLevelPluginTests")
    ]
)