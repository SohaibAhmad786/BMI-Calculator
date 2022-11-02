import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconContent extends StatelessWidget {
  String label;
  IconData icon;
  IconContent({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
