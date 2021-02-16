# TTParallaxOnboarding

![](https://img.shields.io/badge/Swift-4.0-green.svg?style=flat)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-4BC51D.svg?style=flat)](https://swift.org/package-manager/)
[![License: MIT](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](https://github.com/s4cha/Stevia/blob/master/LICENSE)
[![GitHub tag](https://img.shields.io/github/release/freshos/KeyboardLayoutGuide.svg)](https://github.com/tapptitude/TTParallaxOnboarding/releases)
[![Twitter](https://img.shields.io/badge/Twitter-@Tapptitude-blue.svg?style=flat)](http://twitter.com/Tapptitude)

## About
Lightweight library to and example project to build beautiful parallaxing onbaording slides. 

This project is maintained by Tapptitude, a mobile app development agency specialized in building high-quality iOS and Android mobile apps, for startups and brands alike. A lively team of skilled app developers and app designers based in Europe, we provide full-stack mobile app development services to entrepreneurs looking to innovate on mobile.  

![](Resources/parallax-example.gif)

## Requirements

- iOS 11.0+
- Xcode 10.0+

## Installation

_CocoaPods_

_Swift 5.0_

```ruby
pod 'TTFortuneWheel'
```

_Swift 4.2_

```ruby
pod 'TTFortuneWheel', '~>0.1.6'
```

_Swift 4.0_

```ruby
pod 'TTFortuneWheel', '~>0.1.5'
```

_Carthage_

```
github "tapptitude/TTFortuneWheel-iOS"
```

_Manually_

Add contents of TTFortuneWheel folder to your project. 

## Usage

You can place the FortuneWheel in your storyboard or add it as sa subview programatically. 

```swift

override func viewDidLoad() {
        super.viewDidLoad()
        
        let slices = [ FortuneWheelSlice(title: "Slice 1"),
                       FortuneWheelSlice(title: "Slice 2"),
                       FortuneWheelSlice(title: "Slice 3")]
        
        let fortuneWheel = TTFortuneWheel(frame: frame, slices:slices)
        spinningWheel.equalSlices = true
        self.view.addSubview(fortuneWheel)        
}
```
## How to customize?

In order to provide custom drawing for slices you have to implement `FortuneWheelSliceProtocol`. 
or can use the preconfiugred `FortuneWheelSliceImpl` class.

## Contribution

Feel free to Fork, submit Pull Requests or send us your feedback and suggestions!


## License

TTFortuneWheel is available under the MIT license. See the LICENSE file for more info.
