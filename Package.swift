// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Lottie",
    platforms: [.iOS(.v9), .macOS("10.10")],
    products: [
        .library(name: "Lottie", targets: ["Lottie"]),
        .library(name: "LottieOSx", targets: ["LottieOSx"])
    ],
    targets: [
        .target(
            name: "Lottie",
            path: "lottie-swift/src",
            exclude: ["Public/MacOS"]
        ),
        .target(
            name: "LottieOSx",
            path: "lottie-swift/src",
            exclude: ["Public/iOS"]
        )
    ]
)
