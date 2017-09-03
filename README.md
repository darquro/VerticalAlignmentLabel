# VerticalAlignmentLabel

[![CI Status](http://img.shields.io/travis/YukiKuroda/VerticalAlignmentLabel.svg?style=flat)](https://travis-ci.org/YukiKuroda/VerticalAlignmentLabel)
[![Version](https://img.shields.io/cocoapods/v/VerticalAlignmentLabel.svg?style=flat)](http://cocoapods.org/pods/VerticalAlignmentLabel)
[![License](https://img.shields.io/cocoapods/l/VerticalAlignmentLabel.svg?style=flat)](http://cocoapods.org/pods/VerticalAlignmentLabel)
[![Platform](https://img.shields.io/cocoapods/p/VerticalAlignmentLabel.svg?style=flat)](http://cocoapods.org/pods/VerticalAlignmentLabel)

This is a simple library that allows vertical alignment of UILabel.

![screenshots](./Images/screenshot1.png)

## Usage

1. Set UILabel to Storyboard or XIB.
2. Change `Class` and `Module` of `Custom Class` in Identity Inspector to `VerticalAlignmentLabel`.
  ![screenshots](./Images/screenshot2.png)

3. Select property of `Vertical Alignment Label` in Attributes Inspector.
  ![screenshots](./Images/screenshot3.png)

### Programmatically

```swift
// var label: VerticalAlignmentLabel

label.verticalTextAlignment = .top
label.verticalTextAlignment = .center
label.verticalTextAlignment = .bottom
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- Swift 3.0 or later
- iOS 8.0 or later

## Installation

VerticalAlignmentLabel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "VerticalAlignmentLabel"
```

## Author

darquro, yuki.kuro96@gmail.com

## License

VerticalAlignmentLabel is available under the MIT license. See the LICENSE file for more info.
