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
           checksum: "313b00468a058c3680a78e441d89a9b317800f9e0268de245ee26327ba6a588f")
   ]
)
