import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_web/razorpay_web.dart';

class RazorPayIntegration {
  final BuildContext context;
  final Razorpay _razorpay = Razorpay();
  final razorPayKey = dotenv.get("RAZOR_KEY");
  final razorPaySecret = dotenv.get("RAZOR_SECRET");

  RazorPayIntegration(this.context);

  initiateRazorPay() {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) async {}

  void _handlePaymentError(PaymentFailureResponse response) {}

  void _handleExternalWallet(ExternalWalletResponse response) async {}

  openSession() {
    var options = {
      'key': razorPayKey, //'rzp_test_TxFQU0qSPYWdKW',
      'amount': 100,
      'name': 'ADS',
      'order_id': 'orderId',
      'description': 'Description for order',
      'timeout': 60,
      'prefill': {
        'contact': '9123456789',
        'email': 'flutterwings304@gmail.com'
      }
    };
    _razorpay.open(options);
  }
}
