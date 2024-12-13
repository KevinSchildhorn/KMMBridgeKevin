// swift-tools-version:5.8
import PackageDescription

let packageName = "KevinKMM"


// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'analytics' (do not edit)
let AnalyticsPackageName = "analytics"
// END KMMBRIDGE BLOCK FOR 'analytics'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'breeds' (do not edit)
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