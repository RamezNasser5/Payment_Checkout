import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

AppBar customAppBar({required final String title}) {
  return AppBar(
    centerTitle: true,
    leading: const Icon(
      Icons.arrow_back,
    ),
    title: Text(
      title,
      style: Styles.textStyle25,
    ),
  );
}
