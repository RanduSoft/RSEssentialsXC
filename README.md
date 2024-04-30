# RSEssentials

<img src="https://i.imgur.com/xRZRZiF.png" width="100" height="100">

RSEssentials is a collection of utils and extensions used on all projects I work on.

Jump-start any new project, keep existing code-bases clean and save your sanity with this AIO framework.

## Requirements
- iOS 15.0+
- macOS 13.0+
- tvOS 15.0+
- watchOS 9.0+
- visionOS 1.0+

## Installation
- Swift Package Manager (SPM) - `https://github.com/rursache/RSEssentialsXC`
- Manual `.xcframework` import (unzip `RSEssentials.xcframework.zip` and use the `RSEssentials.xcframework` inside)

## Setup
- Add `RSEssentialsEngine.shared.setup()` in `AppDelegate`
- In your `Info.plist` add the key `ITSAppUsesNonExemptEncryption` with value `NO`

Start by implementing and using `RSBaseViewController`, `RSUtils` and `RSLogger`

## Documentation
[![pages-build-deployment]()](https://github.com/RanduSoft/RSEssentialsXC/actions/workflows/pages/pages-build-deployment)

The documentation is available [here](https://RanduSoft.github.io/RSEssentialsXC/documentation/rsessentials) 

## License
RSEssentials is available under the **MPL-2.0 license**. See the [LICENSE](https://github.com/RanduSoft/RSEssentialsXC/blob/master/LICENSE) file for more info.
