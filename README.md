# RxImageView

[![CI Status](http://img.shields.io/travis/Arnoymous/RxImageView.svg?style=flat)](https://travis-ci.org/Arnoymous/RxImageView)
[![Version](https://img.shields.io/cocoapods/v/RxImageView.svg?style=flat)](http://cocoapods.org/pods/RxImageView)
[![License](https://img.shields.io/cocoapods/l/RxImageView.svg?style=flat)](http://cocoapods.org/pods/RxImageView)
[![Platform](https://img.shields.io/cocoapods/p/RxImageView.svg?style=flat)](http://cocoapods.org/pods/RxImageView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

RxImageView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "RxImageView"
```

## How To Use

```swift

let imageView = UIImageView()

_ = Observable.just(URL(string: "https://lorempixel.com/400/200/cats"))
            .bind(to: imageView.rx.imageURL)
            
_ = Observable.just(URL(string: "https://lorempixel.com/400/200/animals"))
            .bind(to: imageView.rx.imageURL(withPlaceholder: #image))
```

## Author

Arnoymous, ineox@me.com

## License

RxImageView is available under the MIT license. See the LICENSE file for more info.
