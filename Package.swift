// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "ZFPlayer",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "ZFPlayer",
            targets: ["ZFPlayer"]
        )
    ],
    targets: [
        .target(
            name: "ZFPlayer",
            path: "ZFPlayer/Classes",
            sources: ["Core", "ControlView", "AVPlayer", "ijkplayer"],
            resources: [
                .process("ControlView/ZFPlayer.bundle") // bundle 资源必须写在 publicHeadersPath 前
            ],
            publicHeadersPath: "../ZFPlayer/Include", // umbrella header + modulemap
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
