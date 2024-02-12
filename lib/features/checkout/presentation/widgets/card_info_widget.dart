import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 73,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            Image.asset('assets/pay.png'),
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                top: 15,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 50.0,
                    ),
                    child: Text(
                      'Credit Card',
                      style: Styles.textStyleBold18,
                    ),
                  ),
                  Text(
                    'MasterCard **78',
                    style: Styles.textStyle18,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
