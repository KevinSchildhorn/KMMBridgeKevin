// swift-tools-version:5.8
import PackageDescription

let packageName = "KevinKMM"


// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'analytics' (do not edit)
let remoteanalyticsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213759460.zip"
let remoteanalyticsChecksum = "4a72e61312ec0f452b3bc1d9ec2ab3802f84c720a88a41d9c886fbdc3449ce51"
let analyticsPackageName = "analytics"
// END KMMBRIDGE BLOCK FOR 'analytics'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'breeds' (do not edit)
let remotebreedsUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/213759628.zip"
let remotebreedsChecksum = "5765d4edcaad720f06a8b2de24fe9777ed3da70de16e6c30a21b01be67e0233e"
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