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
            resources: [.copy("PrivacyInfo.xcprivacy")]
        ),
		.target(
			name: "RSEssentialsDesignables",
			dependencies: ["RSEssentials"],
			path: "Files"
        ),
       .binaryTarget(
           name: "RSEssentials",
           url: "https://github.com/rursache/RSEssentialsXC/raw/master/RSEssentials.xcframework.zip",
           checksum: "3a944038116e1132535e3a18cdead95480fcfdc6ca5da0f9498c8a82e0b66f3a")
        )
   ]
)
