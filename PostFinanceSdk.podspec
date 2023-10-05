Pod::Spec.new do |s|
  s.name         = "PostFinanceSdk"
  s.module_name  = "PostFinanceSdk"
  s.version      = "1.13.0"
  s.summary      = "Official Wallee Payment SDK to access different payment methods."
  s.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE'}
  s.author       = "PostFinance Ltd"
  s.homepage     = "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk"
  s.source       = { :git => "https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk.git", :tag => "1.13.0" }
  s.vendored_frameworks = "PostFinanceSdk.xcframework"
  s.resource_bundles = { "PostFinance" => "postfinancesdkbundle.jsbundle" }
  s.platform = :ios
  s.swift_version = "4.2"
  s.ios.deployment_target  = '12.4'
  s.dependency 'PaymentResources', '1.0.0'
end
