// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "Pretendard",
    defaultLocalization: "ko",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Pretendard",
            targets: [
                "Pretendard",
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/jaemyeong/ErrorKit.git", .upToNextMajor(from: "0.1.7")),
    ],
    targets: [
        .target(
            name: "Pretendard",
            dependencies: [
                "ErrorKit",
            ],
            resources: [
                .process("Resources"),
            ]
        ),
        .testTarget(
            name: "PretendardTests",
            dependencies: [
                "Pretendard",
            ]
        ),
    ]
)
