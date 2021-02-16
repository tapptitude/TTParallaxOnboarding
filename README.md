# TTParallaxOnboarding

![](https://img.shields.io/badge/Swift-5.0-green.svg?style=flat)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-4BC51D.svg?style=flat)](https://swift.org/package-manager/)
[![License: MIT](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](https://github.com/s4cha/Stevia/blob/master/LICENSE)
[![Twitter](https://img.shields.io/badge/Twitter-@Tapptitude-blue.svg?style=flat)](http://twitter.com/Tapptitude)

## About
Lightweight library to and example project to build beautiful parallaxing onbaording slides. Achive onboarding slides that have depth effect when in motion in a few simple steps. 

This project is maintained by Tapptitude, a mobile app development agency specialized in building high-quality iOS and Android mobile apps, for startups and brands alike. A lively team of skilled app developers and app designers based in Europe, we provide full-stack mobile app development services to entrepreneurs looking to innovate on mobile.  

![](Resources/parallax-example.gif)

## Requirements

- iOS 11.0+
- Xcode 10.0+

## Installation

#### Swift Package Manager

`Xcode` > `File` > `Swift Packages` > `Add Package Dependency...` > `Paste` `https://github.com/tapptitude/TTParallaxOnboarding`

#### Manually

Add the contents of Sources/TTParallaxOnboarding folder to your project.

## Usage

Best way to understand how to use the library is to clone and open the example project.

1. Build your art view in a single container view but keep the slides organized into a horizontal stack view. See `OboardingView` in the example project. 

2. Create an `TTParallaxScrollView` either from code using the interface builder. 

3. Add the art view to the scrollview

```swift
let onboardingView = OnboardingView()
scrollView.set(contentView: onboardingView, pageCount: 3)
```

4. Assign a depth to each of your layer view. The depth value needs to be betwen 0.0 and 1.0. The greater the value is the farther the object will look when scrolling. For example some distant mountains would be 0.9 and somehting just in front of the scene will be 0.0 (this will scroll at the same rate with the ScrollView). 

```swift
self.scrollView.addParallax(to: onboardingView.rocket, depth: 0.4)
self.scrollView.addParallax(to: onboardingView.mountain, depth: 0.7)
```
If you want something to reamin stationary assign it the value of 1.0.


## Contribution

Feel free to Fork, submit Pull Requests or send us your feedback and suggestions!


## License

TTParallaxOnboarding is available under the MIT license. See the LICENSE file for more info.
