import 'package:car_rental_for_car_owner/pages/car_owner_payment_webview/views/car_owner_payment_webview_view.dart';
import 'package:flutter/material.dart';

class CarOwnerPaymentWebviewPage extends StatelessWidget {
  const CarOwnerPaymentWebviewPage({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return CarOwnerPaymentWebviewView(url: url);
  }
}
