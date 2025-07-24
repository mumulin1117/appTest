# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'DiBngHink' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for DiBngHink
pod 'SnapKit'
pod 'SDWebImage'
pod "Alamofire"

pod 'SwiftyStoreKit'
pod 'PKHUD'
pod 'IQKeyboardManager'

pod 'Adjust', '~> 5.1.1'
pod 'FBSDKCoreKit'
end

platform :ios, '15.6'
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.6'
    end
  end
end
