// swift-tools-version:5.9

import PackageDescription
 
let package = Package(
    name: "RSEssentials",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
        .tvOS(.v15),
        .watchOS(.v9),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "RSEssentials",
            targets: ["RSEssentialsTarget"]
        ),
    ],
    targets: [
        .target(
            name: "RSEssentialsTarget",
            dependencies: ["RSEssentials", "RSEssentialsDesignables"],
            path: "Wrapper"
        ),
        .target(
            name: "RSEssentialsDesignables",
            dependencies: ["RSEssentials"],
            path: "Files"
        ),
       .binaryTarget(
           name: "RSEssentials",
           path: "RSEssentials.xcframework.zip"
       )
   ]
)
