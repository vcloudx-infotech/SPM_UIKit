
// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Enx_UIKit_iOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "Enx_UIKit_iOS", targets: ["Enx_UIKit_iOS","EnxRTCiOSWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/vcloudx-infotech/SPM_Test.git", from: "1.0.3")
    ],
    targets: [
        .binaryTarget(
            name: "Enx_UIKit_iOS",
            url: "https://developer.enablex.io/downloads/ui-kit/ios/Enx_UIKit_iOS.xcframework_2.1.11.zip",
            checksum: "a884c4bd351addcb415384a90e788dbf9a1727e51a9d3729c06064135318ce69"
        ),
        .target(
            name: "EnxRTCiOSWrapper",
            dependencies: [
                .product(name: "EnxRTCiOS", package: "SPM_Test")
            ],
            path: "Sources/EnxRTCiOS"
        )
    ]
)
