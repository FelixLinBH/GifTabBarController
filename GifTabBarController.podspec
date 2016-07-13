#
# Be sure to run `pod lib lint GifTabBarController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GifTabBarController'
  s.version          = '0.1.0'
  s.summary          = 'TabBarController with Gif tabBarItem.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    TabBarController has Gif image on tabBarItem.It will animation a loop when tapping.
                       DESC

  s.homepage         = 'https://github.com/FelixLinBH/GifTabBarController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'felix.lin' => 'fly_81211@hotmail.com' }
  s.source           = { :git => 'https://github.com/FelixLinBH/GifTabBarController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'GifTabBarController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GifTabBarController' => ['GifTabBarController/Assets/*.png']
  # }

  s.public_header_files = 'GifTabBarController/Classes/GifTabBarHeader.h'
  s.frameworks = 'UIKit'
  s.dependency 'FLAnimatedImage'
  s.dependency 'Masonry'
end
