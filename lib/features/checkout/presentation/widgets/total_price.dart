import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
    required this.price,
  });

  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Total',
            style: Styles.textStyle24,
          ),
          Text(
            r'$ ' + price,
            style: Styles.textStyle24,
          ),
        ],
      ),
    );
  }
}
