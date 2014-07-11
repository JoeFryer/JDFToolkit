#
# Be sure to run `pod lib lint JDFToolkit.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JDFToolkit"
  s.version          = "1.1"
  s.summary          = "A simple Toolkit of Classes and Categories for common tasks when developing for iOS."
  s.description      = "JDFToolkit is a simple Toolkit of Classes and Categories for common tasks when developing for iOS."
  s.homepage         = "https://github.com/JoeFryer/JDFToolkit"
  s.license          = 'MIT'
  s.author           = { "Joe Fryer" => "joe.d.fryer@gmail.com" }
  s.source           = { :git => "https://github.com/JoeFryer/JDFToolkit.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/joefryer88'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'

  s.frameworks = 'UIKit'
end
