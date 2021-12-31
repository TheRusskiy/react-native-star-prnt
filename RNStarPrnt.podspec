
Pod::Spec.new do |s|
  s.name         = "RNStarPrnt"
  s.version      = "1.0.0"
  s.summary      = "RNStarPrnt"
  s.description  = <<-DESC
                  RNStarPrnt
                   DESC
  s.homepage     = "https://github.com/therusskiy/react-native-star-prnt"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/therusskiy/react-native-star-prnt.git", :tag => "master" }
  s.source_files  = "ios/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.frameworks = 'CoreBluetooth', 'ExternalAccessory'
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'x86_64',
    'EXCLUDED_SOURCE_FILE_NAMES[sdk=iphoneos*]' => '$(SRCROOT)/../../node_modules/react-native-star-prnt/ios/libs/StarIO.framework/ios-arm64_x86_64-simulator/*.* $(SRCROOT)/../../node_modules/react-native-star-prnt/ios/libs/StarIO_Extension.framework/ios-arm64_x86_64-simulator/*.*',
    'FRAMEWORK_SEARCH_PATHS[sdk=iphoneos*]' => '$(SRCROOT)/libs/** $(SRCROOT)/../../node_modules/react-native-star-prnt/ios/libs $(SRCROOT)/../../node_modules/react-native-star-prnt/ios/libs/StarIO.framework/ios-arm64 $(SRCROOT)/../../node_modules/react-native-star-prnt/ios/libs/StarIO_Extension.framework/ios-arm64',
  }
  s.vendored_frameworks = 'ios/Frameworks/StarIO.framework', 'ios/Frameworks/StarIO_Extension.framework'

  #s.dependency "others"

end


