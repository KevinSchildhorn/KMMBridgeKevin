// swift-tools-version:5.8
import PackageDescription

let packageName = "allshared"

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'allshared' (do not edit)
let testPackagePackageName = "analytics"
let testPackage2PackageName = "breeds"
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