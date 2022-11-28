// swift-tools-version:5.7.1
import PackageDescription
 
let package = Package(
   name: "RSEssentials",
   platforms: [.iOS(.v13)],
   products: [
       .library(
           name: "RSEssentials",
           targets: ["RSEssentialsTarget"]),
   ],
   targets: [
       .target(
            name: "RSEssentialsTarget",
            dependencies: [.target(name: "RSEssentialsWrapper")],
            path: "RSEssentialsWrap"),
       .target(
            name: "RSEssentialsWrapper",
            dependencies: ["RSEssentials", "RSEssentialsDesignables"],
            path: "RSEssentialsWrapper"),
		.target(
			name: "RSEssentialsDesignables",
			dependencies: ["RSEssentials"],
			path: "Files"),
       .binaryTarget(
           name: "RSEssentials",
           url: "https://github.com/rursache/RSEssentialsXC/raw/master/RSEssentials.xcframework.zip",
           checksum: "5a1dc2bd6a008c76c6938cba320b434e3a270d3738c6af5404cc144f914139c7")
   ],
   swiftLanguageVersions: [.v5]
)
