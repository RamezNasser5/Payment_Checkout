import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/custom_app_bar.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Transform.translate(
        offset: const Offset(0, -16),
        child: const ThankYouViewBody(),
      ),
    );
  }
}
