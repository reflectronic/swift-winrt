// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SwiftWinRT",
    platforms: [
        .macOS(.v10_14)
    ],
    targets: [
        .target(
            name: "WinRT",
            dependencies: []),
        .target(
            name: "WinMD",
            path: "./Sources/WinMD"),
        .target(
            name: "SwiftWinRT",
            dependencies: ["WinMD"]),
        .testTarget(
            name: "SwiftWinRTTests",
            dependencies: ["SwiftWinRT"]),
    ],
    cxxLanguageStandard: .cxx1z
)
