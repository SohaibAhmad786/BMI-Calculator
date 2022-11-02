import 'package:flutter/material.dart';

class RoundButton extends StatefulWidget {
  final IconData icons;
  const RoundButton({
    super.key,
    required this.icons,
  });

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: null,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(widget.icons),
    );
  }
}
