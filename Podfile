# Uncomment the next line to define a global platform for your project
# platform :ios, '13.0'

target 'Hirdfrodhand' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Hirdfrodhand
pod "IQKeyboardManager"

pod "SwiftyStoreKit"
pod 'SnapKit'
pod 'Siren'
pod 'PopupDialog'

pod 'MJRefresh'
pod "Player"



end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
    end
  end
end