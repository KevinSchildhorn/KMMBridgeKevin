// swift-tools-version:5.8
import PackageDescription

let packageName = "KevinKMM"


// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'analytics' (do not edit)
let remoteanalyticsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213184030.zip"
let remoteanalyticsChecksum = "6b3f8d48e0fe2314c553d1eed0e75f96a76ef243b06cde2c9a9adcaab6af8d5c"
let analyticsPackageName = "analytics"
// END KMMBRIDGE BLOCK FOR 'analytics'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'breeds' (do not edit)
let remotebreedsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213184835.zip"
let remotebreedsChecksum = "003384103432d7a42207c2dea9a23128a890c9042ae91845afb0bdd550d97e9b"
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
        .target(
            name: packageName,
        ),
        .target(
            name: AnalyticsPackageName,
        ),
        .target(
            name: BreedsPackageName,
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