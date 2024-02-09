import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 70,
      minWidth: 350,
      onPressed: onPressed,
      color: const Color(0xff34A853),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: Styles.textStyle24,
      ),
    );
  }
}
