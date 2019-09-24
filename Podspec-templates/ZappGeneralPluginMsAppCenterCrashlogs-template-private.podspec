Pod::Spec.new do |s|
  s.name  = "__framework_name__"
  s.version = '__version__'
  s.platform  = :ios, '__ios_platform_version__'
  s.summary = "__framework_name__"
  s.description = "__framework_name__ container."
  s.homepage  = "https://github.com/applicaster/__framework_name__-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source  = { :git => "git@github.com:applicaster/__framework_name__-iOS.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.static_framework = true

  s.public_header_files = '__framework_name__/**/*.h'
  s.source_files = '__framework_name__/**/*.{h,m,swift}'

  s.resources = [
                "__framework_name__/**/*.xcassets",
                "__framework_name__/**/*.storyboard",
                "__framework_name__/**/*.xib",
                "__framework_name__/**/*.png"]

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '__swift_version__'
              }

  s.dependency 'ZappGeneralPluginsSDK'
  s.dependency 'AppCenter/Crashes', '~> 2.3.0'

end
