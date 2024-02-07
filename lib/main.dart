import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const PaymentCheckout());
}

class PaymentCheckout extends StatelessWidget {
  const PaymentCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
