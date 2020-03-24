#
# Be sure to run `pod lib lint TestHelloWorlder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestSlidesSDK'
  s.version          = '1.0.1'
  s.summary          = 'A test application to demonstrate CocoaPods usage.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a test application to get acquainted with creating, deploying and using of CocoaPods.
                       DESC

  s.homepage         = 'https://github.com/vputrov/testswiftsdk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Victor Putrov' => 'victor.putrov@aspose.com' }
  s.source           = { :git => 'https://github.com/vputrov/testswiftsdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :osx
  s.osx.deployment_target = "10.10"
  s.swift_version = "5.1.3"

  s.source_files = 'TestSlidesSDK/**/*'

  # s.resource_bundles = {
  #   'TestHelloWorlder' => ['TestHelloWorlder/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'Cocoa'
  s.dependency 'Alamofire', '~> 4.5.0'
end
