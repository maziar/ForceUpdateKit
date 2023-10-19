#
#  Be sure to run `pod spec lint ForceUpdateKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "ForceUpdateKit"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of ForceUpdateKit."

  spec.license = 'MIT'
  spec.summary = 'The force update in all app is handled easily.'
  spec.homepage = 'https://github.com/maziar/ForceupdateKit'
  spec.source = { :git => 'https://github.com/maziar/ForceupdateKit.git', :tag => "#{spec.version}" }

  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '10.11'
  spec.tvos.deployment_target = '10.0'

  spec.source_files = 'Sources/*.swift'

  spec.xcconfig = {
      'LIBRARY_SEARCH_PATHS' => '$(SDKROOT)/usr/lib/swift',
  }

  spec.swift_versions = ['5.0']
  spec.author = { "Maziar Saadatfar" => "maziar.saadatfar@gmail.com" }

end
