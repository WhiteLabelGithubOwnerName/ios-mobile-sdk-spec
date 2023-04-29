Pod::Spec.new do |s|
  s.name         = "WalleePaymentSdk"
  s.module_name  = "WalleePaymentSdk"
  s.version      = "3.3.3"
  s.summary      = "https://whitelabel-docs.com"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                   license
                   LICENSE
               }


  s.author       = "WalleeXXXX"
  s.homepage     = "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk"

  s.source       = { :git => "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk.git", :tag => "3.3.3" }
  s.vendored_frameworks = "WalleePaymentSdk.xcframework"
  s.resource_bundles = { "WalleePayment" => "walleepaymentsdkbundle.jsbundle" }

  s.platform = :ios
  s.swift_version = "4.2"
  s.ios.deployment_target  = '12.4'
    s.dependency 'OpenSSL-Universal'
#   s.dependency 'OpenSSL-Universal', '~> 1.1.1000'
#   s.dependency 'Flipper-Glog', '~> 0.3.5'
#   s.dependency 'Flipper-DoubleConversion',  '~> 3.2.0.1'
end
