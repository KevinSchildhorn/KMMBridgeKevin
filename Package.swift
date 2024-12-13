// swift-tools-version:5.8
import PackageDescription

let packageName = "KevinKMM"


// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'analytics' (do not edit)
let remoteAnalyticsUrl = "https://sso-sdks.cdotools.io/IdentitySDKCore-2.7.0-headless-2-12888440-1155-44dc-9c30-47d7b627ee72.xcframework.zip"
let remoteAnalyticsChecksum = "675aa4d16cab1b8704d3c3f36f934392b30b0cac4030d559fc15bb4968701198"
let AnalyticsPackageName = "analytics"
// END KMMBRIDGE BLOCK FOR 'analytics'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'breeds' (do not edit)
let remoteBreedsUrl = "https://sso-sdks.cdotools.io/IdentitySDKHeadless-2.7.0-headless-2-8d7dc73f-ec01-42f5-bd00-196e70446714.xcframework.zip"
let remoteBreedsChecksum = "63de919d1c98d6aefdf85abf046e8d8736ca134b49d1cb6f65a0b38d4cd799e5"
let BreedsPackageName = "breeds"
// END KMMBRIDGE BLOCK FOR 'breeds'


let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: packageName,
            type: .static,
            targets: [packageName]
        )
    ],
    targets: [
        .target(
            name: packageName,
        ),
        .binaryTarget(
            name: AnalyticsPackageName,
            path: "./\(AnalyticsPackageName)/build/XCFrameworks/debug/\(AnalyticsPackageName).xcframework"
        ),
        .binaryTarget(
            name: BreedsPackageName,
            path: "./\(BreedsPackageName)/build/XCFrameworks/debug/\(BreedsPackageName).xcframework"
        ),
    ]
)