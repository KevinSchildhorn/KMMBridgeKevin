// swift-tools-version:5.8
import PackageDescription

let packageName = "KevinKMM"


// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'analytics' (do not edit)
let remoteanalyticsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213766056.zip"
let remoteanalyticsChecksum = "e1c7e2664dd6b5ffbab47a467f90bd66152b9063b35d52c6977fc43d89409446"
let analyticsPackageName = "analytics"
// END KMMBRIDGE BLOCK FOR 'analytics'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'breeds' (do not edit)
let remotebreedsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213767262.zip"
let remotebreedsChecksum = "54cac6c9dabe2d783eaa3e1c1fdb4973b10506abb955508916a145541bc95c1f"
let breedsPackageName = "breeds"
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
            targets: [AnalyticsPackageName, BreedsPackageName]
        ),
        .library(
            name: AnalyticsPackageName,
            type: .static,
            targets: [AnalyticsPackageName]
        ),
        .library(
            name: BreedsPackageName,
            type: .static,
            targets: [BreedsPackageName]
        ),
    ],
    targets: [
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