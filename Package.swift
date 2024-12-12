// swift-tools-version:5.8
import PackageDescription

let packageName = "allshared"

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'allshared' (do not edit)
let remoteallsharedUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/212945815.zip"
let remoteallsharedChecksum = "fd0b27add638c577d5cf62f962e501d0c957bf8eacb129d1bc46588277644db1"
let allsharedPackageName = "allshared"
// END KMMBRIDGE BLOCK FOR 'allshared'

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            path: "./allshared/build/XCFrameworks/debug/\(testPackagePackageName).xcframework"
        ),
        .binaryTarget(
            name: packageName,
            path: "./allshared/build/XCFrameworks/debug/\(testPackage2PackageName).xcframework"
        ),
    ]
)