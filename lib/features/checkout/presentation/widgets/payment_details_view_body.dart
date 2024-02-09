import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/custom_button.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/payment_methods.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(
        child: PaymentMethods(),
      ),
      SliverToBoxAdapter(
        child: CustomCreditCard(
          formKey: formKey,
          autovalidateMode: autovalidateMode,
        ),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
          child: CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const ThankYouView();
                }));
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            text: 'Payment',
          ),
        ),
      )
    ]);
  }
}
