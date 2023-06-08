// swift-tools-version:5.8
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
            path: "Wrapper"),
		.target(
			name: "RSEssentialsDesignables",
			dependencies: ["RSEssentials"],
			path: "Files"),
       .binaryTarget(
           name: "RSEssentials",
           url: "https://github.com/rursache/RSEssentialsXC/raw/master/RSEssentials.xcframework.zip",
           checksum: "792fc67dd55dae2bfa74bb2483c6844ef54629c990d7b9e8f737f184b5106f55")
   ]
)
