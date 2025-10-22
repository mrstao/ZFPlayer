// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "ZFPlayer",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ZFPlayer",
            targets: ["ZFPlayerCore"]
        ),
        .library(
            name: "ZFPlayerControlView",
            targets: ["ZFPlayerControlView"]
        ),
        .library(
            name: "ZFPlayerAVPlayer",
            targets: ["ZFPlayerAVPlayer"]
        )
    ],
    targets: [
        .target(
            name: "ZFPlayerCore",
            path: "ZFPlayer/Classes/Core",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        ),
        .target(
            name: "ZFPlayerControlView",
            dependencies: ["ZFPlayerCore"],
            path: "ZFPlayer/Classes/ControlView",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        ),
        .target(
            name: "ZFPlayerAVPlayer",
            dependencies: ["ZFPlayerCore"],
            path: "ZFPlayer/Classes/AVPlayer",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)