Pod::Spec.new do |s|
  s.name         = "WalleePaymentSdk"
  s.module_name  = "WalleePaymentSdk"
  s.version      = "1.4.d78e9a91f042de4b95b24c06a02d722b329ea7b4-no-firebase-dept-2"
  s.summary      = "Official Wallee Payment SDK to access different payment methods."
  s.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE'}
  s.author       = "wallee AG"
  s.homepage     = "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk"
  s.source       = { :git => "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk.git", :tag => "1.4.d78e9a91f042de4b95b24c06a02d722b329ea7b4-no-firebase-dept-2" }
  s.vendored_frameworks = "WalleePaymentSdk.xcframework"
  s.resource_bundles = { "WalleePayment" => "walleepaymentsdkbundle.jsbundle" }
  s.platform = :ios
  s.swift_version = "4.2"
  s.ios.deployment_target  = '12.4'
  s.dependency 'PaymentResources', '3.0.0'
  s.dependency 'ThreeDS_SDK', '2.3.74', '~> https://github.com/ios-3ds-sdk/Specs.git'
end
