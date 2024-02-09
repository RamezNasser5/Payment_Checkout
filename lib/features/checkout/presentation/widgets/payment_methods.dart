import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/payment_method_item.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final List<String> paymentMethodsItems = const [
    'assets/SVGRepo_iconCarrier.png',
    'assets/Group.png',
    'assets/pay.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => setState(() {
              currentIndex = index;
            }),
            child: PaymentMethodItem(
              isActive: currentIndex == index,
              image: paymentMethodsItems[index],
            ),
          );
        },
      ),
    );
  }
}
