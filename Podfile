
target 'InFriends' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for InFriends
  pod 'SnapKit', '~> 5.7.0'
  pod 'Toast-Swift', '~> 5.1.1'
  pod 'IQKeyboardManagerSwift'
  pod 'KakaJSON'
  pod 'Alamofire'
  pod 'ScreenProtectorKit'
  pod 'RealmSwift'


  target 'InFriendsTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'InFriendsUITests' do
    # Pods for testing
  end

end

post_install do |installer|
    installer.generated_projects.each do |project|
        project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
            end
        end
    end
end

