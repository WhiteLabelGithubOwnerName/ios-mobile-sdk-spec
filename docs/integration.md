# Integration

- [Integration](#integration)
  - [Set up Wallee](#set-up-wallee)
  - [Create transaction](#create-transaction)
  - [Collect payment details](#collect-payment-details)
    - [Basic usage Swift (Storyboard)](#basic-usage-swift-storyboard)
    - [Basic usage SwiftUI](#basic-usage-swiftui)
  - [Handle result](#handle-result)
  - [Verify payment](#verify-payment)

## Set up Wallee

To use the iOS Payment SDK, you need a [wallee account](https://app-wallee.com/user/signup). After signing up, set up your space and enable the payment methods you would like to support.

## Create transaction

For security reasons, your app cannot create transactions and fetch access tokens. This has to be done on your server by talking to the [wallee Web Service API](https://app-wallee.com/en-us/doc/api/web-service). You can use one of the official SDK libraries to make these calls.

To use the iOS Payment SDK to collect payments, an endpoint needs to be added on your server that creates a transaction by calling the [create transaction](https://app-wallee.com/doc/api/web-service#transaction-service--create) API endpoint. A transaction holds information about the customer and the line items and tracks charge attempts and the payment state.

Once the transaction has been created, your endpoint can fetch an access token by calling the [create transaction credentials](https://app-wallee.com/doc/api/web-service#transaction-service--create-transaction-credentials) API endpoint. The access token is returned and passed to the iOS Payment SDK.

```bash
# Create a transaction
curl 'https://app-wallee.com/api/transaction/create?spaceId=1' \
  -X "POST" \
  -d "{{TRANSACTION_DATA}}"

# Fetch an access token for the created transaction
curl 'https://app-wallee.com/api/transaction/createTransactionCredentials?spaceId={{SPACE_ID}}&id={{TRANSACTION_ID}}' \
  -X 'POST'
```

## Collect payment details

### Basic usage Swift (Storyboard)

Before launching the iOS Payment SDK to collect the payment, your checkout page should show the total amount, the products that are being purchased and a checkout button to start the payment process.

Let your checkout activity extend `WalleePaymentResultObserver`, add the necessary function `paymentResult`.

```swift
import UIKit
import WalleePaymentSdk

class ViewController : UIViewController, WalleePaymentResultObserver {

    func paymentResult(paymentResultMessage: PaymentResult)
    {
        ....
    }
}
```

When the customer taps the checkout button, call your endpoint that creates the transaction and returns the access token, initialize the `WalleePaymentSdk` instance and launch the payment dialog.

```swift
// ...
import UIKit
import WalleePaymentSdk

class ViewController : UIViewController, WalleePaymentResultObserver {

    //...
    var walleePaymentSdk: WalleePaymentSdk

    @IBAction func openSdkClick()
    {
        walleePaymentSdk = WalleePaymentSdk(eventObserver: self)
        ...
        walleePaymentSdk.launchPayment(token: _token, rootController: self)
    }

    // ...
}
```

After the customer completes the payment, the dialog dismisses and the `paymentResult` method is called.

### Basic usage SwiftUI

First of all make sure you import the `WalleePaymentSdk` package and initialize it in relevant class. You also need to extend the class with `WalleePaymentResultObserver` to able to receive the result of payment:

```swift
// PaymentManager.swift
import WalleePaymentSdk
...
class PaymentManager: WalleePaymentResultObserver {
...
func onOpenSdkPress(){
    let wallee = WalleePaymentSdk(eventObserver: self)
    ...
    }
}
```

To display the UI of Payment SDK make sure you import the `WalleePaymentSdk` into the relevant View:

```swift
// ContentView.swift
import WalleePaymentSdk
...
    Button {
       // add code for generating transaction and fetching the token
       isModalPresented = true
    } label: {
        Text("Checkout")
    }
    .presentModalView(isPresented: isModalPresented, token: token)
```

Use presentModalView custom modifier for the UI part, passing two arguments: `isPresented` (modal presented state) and `token`.

## Handle result

The response object contains these properties:

- `code` describing the result's type.

| Code | Description |
| --- | --- |
| `COMPLETED` | The payment was successful. |
| `FAILED` | The payment failed. Check the `message` for more information. |
| `CANCELED` | The customer canceled the payment. |
| `PENDING` | The customer has aborted the payment process, so the payment is in a temporarily pending state. It will eventually reach a final status (successful or failed), but it may take a while. Wait for a webhook notification and use the Wallee API to retrieve the status of the transaction and inform the customer that the payment is pending. |
| `TIMEOUT` | Token for this transaction expired. App will be closed and third-party app will get this message. For opening payment sdk third party app have to refetch token |

- `message` providing a localized error message that can be shown to the customer.

```swift
import UIKit
import WalleePaymentSdk

class ViewController: UIViewController, WalleePaymentResultObserver {
    // ...

    @IBOutlet var resultCallbackText: UILabel?

    func paymentResult(paymentResultMessage: PaymentResult) {
        var colorCodeMap = [PaymentResultEnum.FAILED: UIColor.red, PaymentResultEnum.COMPLETED: UIColor.green, PaymentResultEnum.CANCELED: UIColor.orange]

        DispatchQueue.main.async {
            self.resultCallbackText?.text = paymentResultMessage.code.rawValue
            self.resultCallbackText?.textColor = colorCodeMap[paymentResultMessage.code];
        }
    }

    // ...
}
```

## Verify payment

As customers could quit the app or lose network connection before the result is handled or malicious clients could manipulate the response, it is strongly recommended to set up your server to listen for webhook events the get transactions' actual states. Find more information in the [webhook documentation](https://app-wallee.com/en-us/doc/webhooks).
