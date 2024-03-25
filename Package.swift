// swift-tools-version:5.9

import PackageDescription
 
let package = Package(
   name: "RSEssentials",
   platforms: [.iOS("13.2")],
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
            path: "Wrapper",
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ]
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
