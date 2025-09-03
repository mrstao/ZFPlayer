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
            path: "ZFPlayer",
            exclude: ["ijkplayer"],
            resources: [
                .process("ZFPlayer.bundle")
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
