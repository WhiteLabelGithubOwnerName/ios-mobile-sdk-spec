# Table of contents

- [Table of contents](#table-of-contents)
- [WalleePaymentSdk](#walleepaymentsdk)
  - [Installation](#installation)
    - [Requirements](#requirements)
    - [Configuration](#configuration)
      - [From Cocoapods repository](#from-cocoapods-repository)
      - [From GitHub repository](#from-github-repository)
  - [Additional steps](#additional-steps)
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

  pod ‘WalleePaymentSdk’, '1.2.0'

  target 'DemoAppTests' do
    inherit! :search_paths
  end

end
```

#### From GitHub repository

`pod ‘WalleePaymentSdk’, '1.2.0' :source=> ‘https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk-spec.git’`

```sh
target 'DemoApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod ‘WalleePaymentSdk’, '1.2.0' :source=> ‘https://github.com/WhiteLabelGithubOwnerName/ios-mobile-sdk-spec.git’`

  target 'DemoAppTests' do
    inherit! :search_paths
  end

end
```

## Additional steps

For Twint you have to setup `URL types` and `Queried URL Schemes` in your app `Info.plist`.

<mark style="background-color: red"> :bangbang: :warning: Please note that this is essential to invoke TWINT. :warning: :bangbang: </mark>

```xml
 <key>CFBundleURLTypes</key>
 <array>
  <dict>
   <key>CFBundleTypeRole</key>
   <string>Editor</string>
   <key>CFBundleURLSchemes</key>
   <array>
    <string>twint-payment</string>
   </array>
  </dict>
 </array>
 <key>LSApplicationQueriesSchemes</key>
 <array>
  <string>twint-issuer1</string>
  <string>twint-issuer2</string>
  <string>twint-issuer3</string>
  <string>twint-issuer4</string>
  <string>twint-issuer5</string>
  <string>twint-issuer6</string>
  <string>twint-issuer7</string>
  <string>twint-issuer8</string>
  <string>twint-issuer9</string>
  <string>twint-issuer10</string>
  <string>twint-issuer11</string>
  <string>twint-issuer12</string>
  <string>twint-issuer13</string>
  <string>twint-issuer14</string>
  <string>twint-issuer15</string>
  <string>twint-issuer16</string>
  <string>twint-issuer17</string>
  <string>twint-issuer18</string>
  <string>twint-issuer19</string>
  <string>twint-issuer20</string>
  <string>twint-issuer21</string>
  <string>twint-issuer22</string>
  <string>twint-issuer23</string>
  <string>twint-issuer24</string>
  <string>twint-issuer25</string>
  <string>twint-issuer26</string>
  <string>twint-issuer27</string>
  <string>twint-issuer28</string>
  <string>twint-issuer29</string>
  <string>twint-issuer30</string>
  <string>twint-issuer31</string>
  <string>twint-issuer32</string>
  <string>twint-issuer33</string>
  <string>twint-issuer34</string>
  <string>twint-issuer35</string>
  <string>twint-issuer36</string>
  <string>twint-issuer37</string>
  <string>twint-issuer38</string>
  <string>twint-issuer39</string>
  <string>twint-issuer40</string>
  <string>twint-issuer41</string>
  <string>twint-issuer42</string>
  <string>twint-issuer43</string>
  <string>twint-issuer44</string>
  <string>twint-issuer45</string>
  <string>twint-issuer46</string>
  <string>twint-issuer47</string>
  <string>twint-issuer48</string>
  <string>twint-issuer49</string>
  <string>twint-issuer50</string>
 </array>



```

## Documentation

- [API Reference](./docs/api-reference.md)
- [Integration](./docs/integration.md)
- [Theming](./docs/theming.md)
- [Apple Pay](./docs/apple-pay.md)
