# RSEssentials

<img src="https://i.imgur.com/xRZRZiF.png" width="100" height="100">

RSEssentials is a collection of utils and extensions used on all projects I work on.
Jump-start any new project, keep existing code-bases clean and save your sanity with this AIO framework.

## Installation
- Swift Package Manager (SPM) - `https://github.com/rursache/RSEssentialsXC`
- Manual `.xcframework` import (unzip `RSEssentials.xcframework.zip` and use the `RSEssentials.xcframework` inside)

## Setup
- Add `RSEssentialsEngine.shared.setup()` in `AppDelegate`
- In Target settings, scroll to frameworks and make sure **RSEssentials** it set to `Sign & Embed`
- In your `Info.plist` add the key `ITSAppUsesNonExemptEncryption` with value `NO`

Start by implementing and using `RSBaseViewController`, `RSUtils` and `RSLogger`

## Documentation
[![pages-build-deployment](https://github.com/rursache/RSEssentialsXC/actions/workflows/pages/pages-build-deployment/badge.svg?branch=master)](https://github.com/rursache/RSEssentialsXC/actions/workflows/pages/pages-build-deployment)

The documentation is available [here](https://rursache.github.io/RSEssentialsXC/documentation/rsessentials) 

## License
RSEssentials is available under the **MPL-2.0 license**. See the [LICENSE](https://github.com/rursache/RSEssentialsXC/blob/master/LICENSE) file for more info.
