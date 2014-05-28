Pod::Spec.new do |s|
  s.name              = 'HockeySDK'
  s.version           = '3.6-b.1'

  s.summary           = 'Collect live crash reports, get feedback from your users, distribute your betas, and analyze your test coverage with HockeyApp.'
  s.description       = <<-DESC
                        HockeyApp is a service to distribute beta apps, collect crash reports and
                        communicate with your app's users.
                        
                        It improves the testing process dramatically and can be used for both beta
                        and App Store builds.
                        DESC

  s.homepage          = 'http://hockeyapp.net/'
  s.documentation_url = 'http://hockeyapp.net/help/sdk/ios/3.6-b.1/'

  s.license           = 'MIT'
  s.author            = { 'Andreas Linde' => 'mail@andreaslinde.de', 'Thomas Dohmke' => "thomas@dohmke.de" }
  s.source            = { :git => 'https://github.com/bitstadium/HockeySDK-iOS.git', :tag => s.version.to_s }

  s.platform          = :ios, '6.0'
  s.source_files      = 'Classes', "Vendor/CrashReporter.framework/Versions/A/Headers/*.h"
  s.requires_arc      = true
  
  s.frameworks              = 'CoreText', 'QuartzCore', 'SystemConfiguration', 'CoreGraphics', 'UIKit', 'Security', 'AssetsLibrary', 'MobileCoreServices', 'QuickLook'
  s.ios.vendored_frameworks = 'Vendor/CrashReporter.framework'
  s.xcconfig                = {'GCC_PREPROCESSOR_DEFINITIONS' => %{$(inherited) BITHOCKEY_VERSION="@\\"#{s.version}\\"" BITHOCKEY_C_VERSION="\\"#{s.version}\\"" BITHOCKEY_BUILD="@\\"29\\"" BITHOCKEY_C_BUILD="\\"29\\""} }
  s.resource_bundle         = { 'HockeySDKResources' => ['Resources/*.png', 'Resources/*.lproj'] }
  s.preserve_paths          = 'Resources', 'Support'

end