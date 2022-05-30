import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback press;
  const RoundIconButton({
    Key? key,
    this.icon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: press,
      constraints: const BoxConstraints(
        minWidth: 56,
        minHeight: 56,
      ),
      child: Icon(icon),
    );
  }
}
