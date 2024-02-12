import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_checkout/core/utils/styles.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/card_info_widget.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/payment_item_info.dart';
import 'package:payment_checkout/features/checkout/presentation/widgets/total_price.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xffEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66.0, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank You!',
              style: Styles.textStyle25,
            ),
            const Text(
              'Your transaction was successful',
              style: Styles.textStyle18,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentItemInfo(
              title: 'Data',
              value: '01/24/2023',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: 'Time',
              value: '10:15 AM',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            const Divider(
              thickness: 2,
              height: 60,
            ),
            const TotalPrice(price: '50.90'),
            const SizedBox(
              height: 30,
            ),
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 70,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1.50,
                        color: Color(0xff34A853),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      style: Styles.textStyle24.copyWith(
                        color: const Color(0xff34A853),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 2) - 35,
            )
          ],
        ),
      ),
    );
  }
}
