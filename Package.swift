// swift-tools-version:5.8
import PackageDescription

let packageName = "KevinKMM"


let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: packageName,
            type: .static,
            targets: ["S3"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "S3",
            path: "s3://kevins-kmm-bucket/breeds-0.3.0-1734619493907-54cd3c2e-c278-4228-b07a-ccc216a326a7.xcframework.zip"
        ),
    ]
)