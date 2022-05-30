import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Widget? child;
  final Color colour;
  final VoidCallback? press;
  const ReuseableCard({
    Key? key,
    this.child,
    this.colour = kActiveCardColour,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
