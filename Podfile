# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'
use_frameworks!
install! 'cocoapods', :deterministic_uuids => false

source 'git@github.com:CocoaPods/Specs.git'
source 'git@github.com:applicaster/PluginsBuilderCocoaPods.git'
source 'git@github.com:applicaster/CocoaPods.git'
pre_install do |installer|
    # workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
    Pod::Installer::Xcode::TargetValidator.send(:define_method, :verify_no_static_framework_transitive_dependencies) {}
end

def shared_pods
  # Pods for ZappCrashlogsPluginMsAppCenter
  pod 'ZappCrashlogsPluginsSDK', :git => 'git@github.com:applicaster/ZappCrashlogsPluginsSDK-iOS.git', :branch => 'master'
  pod 'AppCenter/Crashes', '~> 2.3.0'
end

target 'ZappCrashlogsPluginMsAppCenter' do
  shared_pods
  target 'ZappCrashlogsPluginMsAppCenterTests' do
    # Pods for testing
  end
end
