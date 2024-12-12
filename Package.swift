// swift-tools-version:5.8
import PackageDescription

let packageName = "allshared"

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'allshared' (do not edit)
let remoteallsharedUrl = "https://api.github.com/repos/KevinSchildhorn/KMMBridgeKevin/releases/assets/212979099.zip"
let remoteallsharedChecksum = "f63b958efa1c4597954ec73d04d3e805e3641274d05c3329a02a08ac590be559"
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
            targets: [testPackagePackageName, testPackage2PackageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: testPackagePackageName,
            path: "./\(testPackagePackageName)/build/XCFrameworks/debug/\(testPackagePackageName).xcframework"
        ),
        .binaryTarget(
            name: testPackage2PackageName,
            path: "./\(testPackage2PackageName)/build/XCFrameworks/debug/\(testPackage2PackageName).xcframework"
        ),
    ]
)