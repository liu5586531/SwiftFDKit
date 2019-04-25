#
# Be sure to run `pod lib lint SwiftFDKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftFDKit'
  s.version          = '0.0.1'
  s.summary          = 'A short description of SwiftFDKit.'
  s.ios.deployment_target = '10.0'
  s.swift_version = '4.2'
  s.static_framework = true
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/teng.wang.o/SwiftFDKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'teng.wang.o' => 'teng.wang.o@nio.com' }
  s.source           = { :git => 'https://github.com/teng.wang.o/SwiftFDKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftFDKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SwiftFDKit' => ['SwiftFDKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
