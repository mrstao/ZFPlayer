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
            targets: ["Core", "ControlView", "AVPlayer"]
        )
    ],
    targets: [
        .target(
            name: "Core",
            path: "ZFPlayer/Classes/Core",
            exclude: [],
            sources: nil,
            resources: [],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        ),
        .target(
            name: "ControlView",
            dependencies: ["Core"],
            path: "ZFPlayer/Classes/ControlView",
            exclude: [],
            sources: nil,
            resources: [
                .process("ZFPlayer.bundle")
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        ),
        .target(
            name: "AVPlayer",
            dependencies: ["Core"],
            path: "ZFPlayer/Classes/AVPlayer",
            exclude: [],
            sources: nil,
            resources: [],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
