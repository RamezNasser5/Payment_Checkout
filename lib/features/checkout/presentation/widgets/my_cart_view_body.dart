import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/custom_button.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/order_info_item.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/payment_methods_bottom_sheet.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 18,
        ),
        Expanded(
          child: Image.asset(
            'assets/image_pasket.png',
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const OrderInfoItem(
          text: 'Order Subtotal',
          price: '42.79',
        ),
        const SizedBox(
          height: 10,
        ),
        const OrderInfoItem(
          text: 'Discount',
          price: '0',
        ),
        const SizedBox(
          height: 10,
        ),
        const OrderInfoItem(
          text: 'Shipping',
          price: '8',
        ),
        const Divider(
          thickness: 3,
          color: Colors.black,
          indent: 20,
          endIndent: 20,
          height: 50,
        ),
        const TotalPrice(
          price: '50.97',
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          onPressed: () {
            showBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                context: context,
                builder: (context) {
                  return const PaymentMethodsBottomSheet();
                });
          },
          text: 'Complete Payment',
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
