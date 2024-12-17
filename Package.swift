// swift-tools-version:5.8
import PackageDescription

let packageName = "KevinKMM"


// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'analytics' (do not edit)
let remoteanalyticsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213973763.zip"
let remoteanalyticsChecksum = "4465972c1b56382128a38a41f27d19304b3b98429d7553c6eb751aba8907db43"
let analyticsPackageName = "analytics"
// END KMMBRIDGE BLOCK FOR 'analytics'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'breeds' (do not edit)
let remotebreedsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213976529.zip"
let remotebreedsChecksum = "80d1af2904e13f7cea002b6836ac78c5b2ed14638a3c8905718ecd00f619d55e"
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
            targets: [analyticsPackageName, breedsPackageName]
        ),
        .library(
            name: analyticsPackageName,
            type: .static,
            targets: [analyticsPackageName]
        ),
        .library(
            name: breedsPackageName,
            type: .static,
            targets: [breedsPackageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: analyticsPackageName,
            path: remoteanalyticsUrl,
            checksum: remoteanalyticsChecksum

        ),
        .binaryTarget(
            name: analyticsPackageName,
            path: remotebreedsUrl,
            checksum: remotebreedsChecksum
        ),
    ]
)