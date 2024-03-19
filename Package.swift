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
           url: "https://github.com/rursache/RSEssentialsXC/raw/master/RSEssentials.xcframework.zip",
           checksum: "c72c1561b3a0c773f636f3da4308a2f662ac33d1401ce5c05cb01961153e711b")
   ]
)
