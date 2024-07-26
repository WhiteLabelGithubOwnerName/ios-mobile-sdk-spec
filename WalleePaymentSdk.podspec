Pod::Spec.new do |s|
  s.name         = "WalleePaymentSdk"
  s.module_name  = "WalleePaymentSdk"
  s.version      = "7.0.0.163178a5dab5dda0c00da6e415c82ae85c2e5e0c"
  s.summary      = "Official Wallee Payment SDK to access different payment methods."
  s.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE'}
  s.author       = "wallee AG"
  s.homepage     = "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk"
  s.source       = { :git => "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk.git", :tag => "7.0.0.163178a5dab5dda0c00da6e415c82ae85c2e5e0c" }
  s.vendored_frameworks = "WalleePaymentSdk.xcframework"
  s.resource_bundles = { "WalleePayment" => "walleepaymentsdkbundle.jsbundle" }
  s.platform = :ios
  s.swift_version = "4.2"
  s.ios.deployment_target  = '12.4'
  s.dependency 'PaymentResources', '1.0.0'
end
