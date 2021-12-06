#
# Be sure to run `pod lib lint Screeb.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Screeb'
  s.version          = '0.4.0'
  s.summary          = 'Screeb is a feedback solution'
  s.description      = 'Screeb sdk for iOS  is a feedback solution to integrate in apps'
  s.homepage         = 'https://screeb.app'
  s.license          = { :type => 'Proprietary', :file => 'LICENSE' }
  s.author           = { 'Clement Quaquin' => 'clement@screeb.app' }
  s.source           = { :http => "https://github.com/ScreebApp/sdk-ios-public/releases/download/#{s.version}/Screeb.zip" }

  s.platform          = :ios, '12.0'
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  s.ios.vendored_frameworks = 'Screeb.xcframework'

  s.dependency 'Alamofire', '~> 5.4'
  s.dependency 'AlamofireNetworkActivityLogger', '~> 3.4'
  s.dependency 'Starscream', '~> 4.0.0'
  s.dependency 'Kingfisher', '~> 7.0'
end

