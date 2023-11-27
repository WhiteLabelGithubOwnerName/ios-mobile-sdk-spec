# API reference

| API | Type | Description |
| --- | --- | --- |
| WalleePaymentResultObserver | protocol | Protocol for handling post-payment events `paymentResult` |
| `func paymentResult(paymentResultMessage: PaymentResult)` | function | Result handler for transaction state |
| `func launchPayment(token: String, rootController: UIViewController)` | function | Opening payment dialog (activity) |
| `func setDarkTheme(dark: NSMutableDictionary)` | function | Can override the whole dark theme or just some specific color. |
| `func setLightTheme(light: NSMutableDictionary)` | function | Can override the whole light theme or just some specific color. |
| `func setCustomTheme(custom: NSMutableDictionary/nill, baseTheme: ThemeEnum)` | function | Force to use only this theme (independent on user's setup). Can override default light/dark theme and force to use it or completely replace all or specific colors (DARK/LIGHT) |
| `func presentModalView(isPresented: Binding<Bool>, token: Binding<String>)` | extension | SwiftUI View modifier to present the UI part of the Payment SDK |
| `func setAnimation(type: AnimationEnum)` | function | Defining type of animation for moving between the pages |
| `func configureApplePay(merchantId: String)` | function | Configuring ApplePay Merchant ID which is going to be used to process paymens (requires some portal configuration, see [Apple Pay integration](./apple-pay.md)) |
