import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/custom_app_bar.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'My Cart',
      ),
      body: const MyCartViewBody(),
    );
  }
}
