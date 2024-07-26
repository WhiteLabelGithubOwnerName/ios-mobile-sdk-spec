# Table of contents

- [Table of contents](#table-of-contents)
- [WalleePaymentSdk](#walleepaymentsdk)
  - [Installation](#installation)
    - [Requirements](#requirements)
    - [Configuration](#configuration)
      - [From Cocoapods repository](#from-cocoapods-repository)
      - [From GitHub repository](#from-github-repository)
  - [Documentation](#documentation)

# WalleePaymentSdk

[ios SDK Release on GitHub](https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk/releases)

## Installation

### Requirements

- iOS 12.4 is the minimum version supported

### Configuration

Import the SDK to your app as [Cocoapod](https://cocoapods.org/)

#### From Cocoapods repository

```sh
target 'DemoApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod ‘WalleePaymentSdk’, '1.4.d78e9a91f042de4b95b24c06a02d722b329ea7b4-no-firebase-dept-3'

  target 'DemoAppTests' do
    inherit! :search_paths
  end

end
```

#### From GitHub repository

`pod 'WalleePaymentSdk', '1.4.d78e9a91f042de4b95b24c06a02d722b329ea7b4-no-firebase-dept-3', :source=> 'https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk.git'`

and

`pod 'PaymentResources', '3.0.0'`

```sh
target 'DemoApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'WalleePaymentSdk', '1.4.d78e9a91f042de4b95b24c06a02d722b329ea7b4-no-firebase-dept-3', :source => 'https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk.git'
  pod 'PaymentResources', '3.0.0'

  target 'DemoAppTests' do
    inherit! :search_paths
  end

end
```

## Documentation

- [API Reference](./docs/api-reference.md)
- [Integration](./docs/integration.md)
- [Theming](./docs/theming.md)
- [Apple Pay](./docs/apple-pay.md)
