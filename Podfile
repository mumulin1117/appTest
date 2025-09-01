# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'UonniHeadB' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for UonniHeadB
pod 'IQKeyboardManager'

pod 'SVProgressHUD'
pod 'Kingfisher'
pod 'SwiftyStoreKit'
pod 'Adjust', '~> 5.1.1'
pod 'FBSDKCoreKit'
pod 'SnapKit'
end


platform :ios, '12.0'

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.6'
    end
  end
end