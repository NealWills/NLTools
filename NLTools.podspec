#
# Be sure to run `pod lib lint NLTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NLTools'
  s.version          = '0.0.0.1'
  s.summary          = '简单的NLTools'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                          简单尝试的YYKit替代品、 制作中
                       DESC

  s.homepage         = 'https://github.com/NealWills/NLTools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', 
                         :file => 'LICENSE', 
                         :text => <<-LICENSE
                                    NealWills 
                                  LICENSE
                        }
  s.author           = { 'NealWills' => 'nealwills93@gmail.com' }
  s.source           = { :git => 'https://github.com/NealWills/NLTools.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'NLTools/Classes/**/*'
  
  # s.resource_bundles = {
  #   'NLTools' => ['NLTools/Assets/*.png']
  # }

  s.public_header_files = 'Pod/Classes/**/NLTools.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
