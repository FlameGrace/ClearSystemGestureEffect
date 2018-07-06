#
#  Be sure to run `pod spec lint ClearSystemGestureEffect.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "ClearSystemGestureEffect"
  s.version      = "0.0.2"
  s.summary      = "Clear System Gesture Effect For iOS."
  s.homepage     = "https://github.com/FlameGrace/ClearSystemGestureEffect"
  s.license      = "Apache"
  s.author             = { "FlameGrace" => "flamegrace@hotmail.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/FlameGrace/ClearSystemGestureEffect.git", :tag => "0.0.2" }
  s.source_files  = "ClearSystemGestureEffect", "ClearSystemGestureEffect/**/*.{h,m}"
  s.public_header_files = "ClearSystemGestureEffect/**/*.h"
end
