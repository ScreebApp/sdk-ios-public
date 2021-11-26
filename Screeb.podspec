#
# Be sure to run `pod lib lint Screeb.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Screeb'
  s.version          = '0.1.0'
  s.summary          = 'Screeb'
  s.description      = 'Screeb'
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.homepage         = 'https://screeb.app'
  s.license          = 'MIT'
  s.author           = { 'Clement Quaquin' => 'clement@screeb.app' }
  s.source           = { :http => 'https://github.com/ScreebApp/sdk-ios-public/releases/download/0.1.0/Screeb.zip' }

  s.platform          = :ios, '12.0'
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  vendored_frameworks = 'Screeb.xcframework'

  s.dependency 'Alamofire', '~> 5.4'
  s.dependency 'AlamofireNetworkActivityLogger', '~> 3.4'
  s.dependency 'Starscream', '~> 4.0.0'
  s.dependency 'Kingfisher', '~> 7.0'
end

