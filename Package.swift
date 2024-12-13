// swift-tools-version:5.8
import PackageDescription

let packageName = "KevinKMM"


// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'analytics' (do not edit)
let remoteanalyticsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213162140.zip"
let remoteanalyticsChecksum = "7b45c63e4ba34f3829c8529e3c31af0696e4afaddecdfe5ac14297a199b3a9ac"
let analyticsPackageName = "analytics"
// END KMMBRIDGE BLOCK FOR 'analytics'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'breeds' (do not edit)
let remotebreedsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213163189.zip"
let remotebreedsChecksum = "a569d5eff13600cf19711f9a4801213abfa08b63606c3db2ccfabb484184a7c0"
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