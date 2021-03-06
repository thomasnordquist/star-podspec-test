Pod::Spec.new do |s|
  s.name         = 'StarSDK'
  s.version      = '0.0.1'
  s.summary      = 'StarIoSDK for iOS'
  s.description  = <<-DESC
                    For detailed information, see Star micronics website.
                   DESC
  s.homepage     = 'https://www.starmicronics.de/de/'
  s.source = { :git => 'https://github.com/thomasnordquist/star-podspec-test.git' }
  s.source_files = "Distributables/StarIO.framework/**/*.h"
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'fixme' => 'fixme@example.com' }
  s.platform     = :ios, '8.0'
  s.public_header_files = 'Distributables/StarIO.framework/**/*.h'
  s.header_dir = 'StarIO'
  s.prepare_command = <<-CMD
    ./fixIncludes.sh Distributables/StarIO.framework/Headers/*.h Distributables/StarIO.framework/Headers/*/*.h
  CMD
  s.vendored_frameworks = 'Distributables/StarIO.framework'
  s.frameworks = 'SystemConfiguration', 'CoreLocation', 'ExternalAccessory', 'AudioToolbox', 'AVFoundation', 'MediaPlayer', 'QuartzCore', 'Accelerate', 'MessageUI', 'CoreData'
  s.library   = 'z'
  s.xcconfig  =  {
    'OTHER_LDFLAGS' => '-ObjC',
    'PODS_HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/StarSDK/Distributables/StarIO.framework/Versions/A/Headers"',
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/StarSDK/Distributables"',
    'GCC_PREPROCESSOR_DEFINITIONS': "$(inherited) BUILDING_STARIO=1"
  }
end
