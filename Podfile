# Uncomment the next line to define a global platform for your project
 platform :ios, '12.0'

 workspace 'SwiftRepoStars'

target 'SwiftRepoStars' do
  project 'SwiftRepoStars.xcodeproj'
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SwiftRepoStars
  pod 'SDWebImage', '~> 5.4'

  target 'SwiftRepoStarsTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'SwiftRepoStarsUITests' do
    # Pods for testing
  end
end

target 'UIComponents' do
  project 'UIComponents/UIComponents.xcodeproj'
  
  target 'UIComponentsTests' do
    project 'UIComponents/UIComponents.xcodeproj'
  end
end
