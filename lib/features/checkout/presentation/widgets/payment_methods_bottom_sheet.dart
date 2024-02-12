import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/custom_button.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/payment_methods.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          const PaymentMethods(),
          const SizedBox(
            height: 32,
          ),
          CustomButton(onPressed: () {}, text: 'Continue')
        ],
      ),
    );
  }
}
