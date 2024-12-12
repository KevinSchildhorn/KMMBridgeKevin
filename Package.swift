// swift-tools-version:5.8
import PackageDescription

let packageName = "allshared"

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'allshared' (do not edit)
let remoteallsharedUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/212966293.zip"
let remoteallsharedChecksum = "4d8330ee08c88b85a78487b03948d762e24b8193e3dc30d13d2dcf6a3d9e0e43"
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
            name: testPackagePackageName,
            path: "./allshared/build/XCFrameworks/debug/\(testPackagePackageName).xcframework"
        ),
        .binaryTarget(
            name: testPackage2PackageName,
            path: "./allshared/build/XCFrameworks/debug/\(testPackage2PackageName).xcframework"
        ),
    ]
)