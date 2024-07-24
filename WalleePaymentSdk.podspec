Pod::Spec.new do |s|
  s.name         = "NAME_PLACEHOLDER"
  s.module_name  = "MODULE_PLACEHOLDER"
  s.version      = "1.4.a64f59ff14123ffb8fc9b36ec960cf23242d7467"
  s.summary      = "DESCRIPTION_PLACEHOLDER"
  s.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE'}
  s.author       = "AUTHOR_PLACEHOLDER"
  s.homepage     = "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk"
  s.source       = { :git => "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk.git", :tag => "1.4.a64f59ff14123ffb8fc9b36ec960cf23242d7467" }
  s.vendored_frameworks = "WalleePaymentSdk.xcframework"
  s.resource_bundles = { "WalleePayment" => "walleepaymentsdkbundle.jsbundle" }
  s.platform = :ios
  s.swift_version = "4.2"
  s.ios.deployment_target  = '12.4'
  s.dependency 'PaymentResources', '1.0.0'
end
