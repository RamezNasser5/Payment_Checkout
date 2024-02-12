import 'package:flutter/material.dart';

class CustomDashedItem extends StatelessWidget {
  const CustomDashedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        15,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(
              height: 3,
              color: const Color(0xffB8B8B8),
            ),
          ),
        ),
      ),
    );
  }
}
