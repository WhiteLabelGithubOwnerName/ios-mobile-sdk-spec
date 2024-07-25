Pod::Spec.new do |s|
  s.name         = "NAME_PLACEHOLDER"
  s.module_name  = "MODULE_PLACEHOLDER"
  s.version      = "1.4.5c89174b41d0ef90c9d8c6d9b5c9d9a788a51890-ir"
  s.summary      = "DESCRIPTION_PLACEHOLDER"
  s.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE'}
  s.author       = "AUTHOR_PLACEHOLDER"
  s.homepage     = "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk"
  s.source       = { :git => "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk.git", :tag => "1.4.5c89174b41d0ef90c9d8c6d9b5c9d9a788a51890-ir" }
  s.vendored_frameworks = "WalleePaymentSdk.xcframework"
  s.resource_bundles = { "WalleePayment" => "walleepaymentsdkbundle.jsbundle" }
  s.platform = :ios
  s.swift_version = "4.2"
  s.ios.deployment_target  = '12.4'
  s.dependency 'PaymentResources', '1.0.0'
end
