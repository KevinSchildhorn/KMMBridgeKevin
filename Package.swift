// swift-tools-version:5.8
import PackageDescription

let packageName = "allshared"

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'analytics' (do not edit)
let testPackagePackageName = "analytics"
// END KMMBRIDGE BLOCK FOR 'analytics'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'breeds' (do not edit)
let testPackage2PackageName = "breeds"
// END KMMBRIDGE BLOCK FOR 'breeds'


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