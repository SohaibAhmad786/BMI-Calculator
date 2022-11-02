import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomPinkButton extends StatelessWidget {
  final String txt;
  const BottomPinkButton({super.key, required this.txt,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(bottom: 5),
      decoration: const BoxDecoration(
          color: kBottomContainerColour,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Center(
        child: Text(
          txt,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}
