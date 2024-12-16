// swift-tools-version:5.8
import PackageDescription

let packageName = "KevinKMM"


// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'analytics' (do not edit)
let remoteanalyticsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213770786.zip"
let remoteanalyticsChecksum = "c77f9ba1951e71ab212cf4ab9d779a19cf3a70bdf67ecfb5984442de471605d0"
let analyticsPackageName = "analytics"
// END KMMBRIDGE BLOCK FOR 'analytics'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'breeds' (do not edit)
let remotebreedsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213771793.zip"
let remotebreedsChecksum = "049e95b66ede9d0121bb1680ed305720a32f0c5d080e28dff2e37d98483d8461"
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