__:warning:  iOS SDK has been released in beta. Please contact us here to request a demo.__

[![Version](https://img.shields.io/cocoapods/v/Screeb.svg?style=flat)](https://cocoapods.org/pods/Screeb)
[![License](https://img.shields.io/cocoapods/l/Screeb.svg?style=flat)](https://cocoapods.org/pods/Screeb)
[![Platform](https://img.shields.io/cocoapods/p/Screeb.svg?style=flat)](https://cocoapods.org/pods/Screeb)

___

## Screeb iOS SDK

This repository contains example projects that show how to integrate the Screeb iOS sdk in you app.

You'll find :

- Install examples for Carthage dependencies manager
- Install examples for Cocoapods dependencies manager
- For each example project, how to initialize Screeb in `AppDelegate.swift`
- For each example project, how to call other Screeb's commands in `ViewController.swift`

## How to install the iOS SDK in your app ?

### Cocoapods

To install the sdk, you just need to add the following lines in your project Podfile file :

```
pod "Screeb", "1.3.0"
```

At the end of the Podfile, add this code :

```ruby
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
        end
    end
end
```

> Screeb sdk supports module stability across Swift versions used by dependencies, so we need all dependencies to be built with the  BUILD_LIBRARY_FOR_DISTRIBUTION flag enabled

## How to configure the iOS SDK
[See here.](https://github.com/ScreebApp/developers/wiki/ios-SDK-install)

## Technical requirements

The Screeb sdk is configured to work with iOS version 12 minimum

The swift version is v 5.0

The size of the sdk is approximately 3.28 Mb

## Dependencies

We try to update the dependencies very frequently, if you have a any problem, please create an issue in this repository.

- 'Alamofire', '~> 5.4'
- 'AlamofireNetworkActivityLogger', '~> 3.4'
- 'Starscream', '~> 4.0.0'
- 'Kingfisher', '~> 7.0'
