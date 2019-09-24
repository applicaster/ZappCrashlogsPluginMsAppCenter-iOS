Pod::Spec.new do |s|
  s.name             = "ZappGeneralPluginMsAppCenterCrashlogs"
  s.version          = '1.0.0'
  s.summary          = "ZappGeneralPluginMsAppCenterCrashlogs"
  s.description      = <<-DESC
                        ZappGeneralPluginMsAppCenterCrashlogs container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappGeneralPluginMsAppCenterCrashlogs-iOS"
  s.license          = 'CMPS'
	s.author           = "Applicaster LTD."
  s.source           = { :git => "git@github.com:applicaster/ZappGeneralPluginMsAppCenterCrashlogs-iOS.git", :tag => s.version.to_s }
  s.platform         = :ios, '10.0'
  s.requires_arc = true
  s.static_framework = true

  s.public_header_files = 'ZappGeneralPluginMsAppCenterCrashlogs/**/*.h'
  s.source_files = 'ZappGeneralPluginMsAppCenterCrashlogs/**/*.{h,m,swift}'

  s.resources = [
                "ZappGeneralPluginMsAppCenterCrashlogs/**/*.xcassets",
                "ZappGeneralPluginMsAppCenterCrashlogs/**/*.storyboard",
                "ZappGeneralPluginMsAppCenterCrashlogs/**/*.xib",
                "ZappGeneralPluginMsAppCenterCrashlogs/**/*.png"]

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '5.0'
                }

  s.dependency 'ZappGeneralPluginsSDK'
  s.dependency 'AppCenter/Crashes', '~> 2.3.0'
end
