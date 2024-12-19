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
            targets: [packageName]
        ),
    ],
    targets: [
        .target(
            name: packageName,
            dependencies: [
                "S3",
            ]
        ),
        .binaryTarget(
            name: "S3",
            path: "https://kevins-kmm-bucket.s3.us-east-2.amazonaws.com/breeds-0.3.0-1734620579313-f439f9d1-cb20-44a6-b56e-39f214574737.xcframework.zip"
        ),
    ]
)