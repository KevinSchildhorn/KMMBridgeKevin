// swift-tools-version:5.8
import PackageDescription

let packageName = "KevinKMM"


// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'analytics' (do not edit)
let remoteanalyticsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213173195.zip"
let remoteanalyticsChecksum = "f8fcd942f71fa874e04ed0ac19fce26ecfe6b452cc85821461927557c4de1e9d"
let analyticsPackageName = "analytics"
// END KMMBRIDGE BLOCK FOR 'analytics'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'breeds' (do not edit)
let remotebreedsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213174399.zip"
let remotebreedsChecksum = "5b648db0f63faeb5c5005fc386a6191d7a287de0a23dfae3dd996d02972eec88"
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