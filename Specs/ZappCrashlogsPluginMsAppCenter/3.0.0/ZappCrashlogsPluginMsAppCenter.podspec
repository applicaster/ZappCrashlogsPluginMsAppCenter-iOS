Pod::Spec.new do |s|
  s.name             = "ZappCrashlogsPluginMsAppCenter"
  s.version          = '3.0.0'
  s.summary          = "ZappCrashlogsPluginMsAppCenter"
  s.description      = <<-DESC
                        ZappCrashlogsPluginMsAppCenter container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappCrashlogsPluginMsAppCenter-iOS"
  s.license          = 'CMPS'
	s.author           = "Applicaster LTD."
  s.source           = { :git => "git@github.com:applicaster/ZappCrashlogsPluginMsAppCenter-iOS.git", :tag => s.version.to_s }
  s.platform         = :ios, '10.0'
  s.requires_arc = true
  s.static_framework = true

  s.public_header_files = 'ZappCrashlogsPluginMsAppCenter/**/*.h'
  s.source_files = 'ZappCrashlogsPluginMsAppCenter/**/*.{h,m,swift}'

  s.resources = [
                "ZappCrashlogsPluginMsAppCenter/**/*.xcassets",
                "ZappCrashlogsPluginMsAppCenter/**/*.storyboard",
                "ZappCrashlogsPluginMsAppCenter/**/*.xib",
                "ZappCrashlogsPluginMsAppCenter/**/*.png"]

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '5.1'
                }

  s.dependency 'ZappCrashlogsPluginsSDK', '~> 3.0.0'
  s.dependency 'AppCenter/Crashes', '~> 2.3.0'
end
