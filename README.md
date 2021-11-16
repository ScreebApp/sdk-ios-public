__:warning:  iOS SDK has been released in beta. Please contact us here to request a demo.__

___

## Screeb iOS SDK

This repository contains example projects that show how to integrate the Screeb iOS sdk in you app.

You'll find :

- Install examples for Carthage dependencies manager
- Install examples for Cocoapods dependencies manager
- For each example project, how to initialize Screeb in `AppDelegate.swift`
- For each example project, how to call other Screeb's commands in `ViewController.swift`

## How to install the iOS SDK in your app ?

### Carthage

To install the sdk, you just need to add the following lines in your project Cartfile file :

```
github "ScreebApp/sdk-ios-public" "0.1.0"
```

## How to configure the iOS SDK
[See here.](https://github.com/ScreebApp/developers/wiki/ios-SDK-install)

## Technical requirements

The Screeb sdk is configured to work with iOS version 12 minimum

The swift version is v 5.0

The size of the sdk is approximately 500 Kb

## Dependencies

We try to update the dependencies very frequently, if you have a any problem, please create an issue in this repository.

- 'Alamofire', '~> 5.4'
- 'AlamofireNetworkActivityLogger', '~> 3.4'
- 'Starscream', '~> 4.0.0'
- 'Kingfisher', '~> 7.0'
