import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const BottomButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        color: kBottbomContainerColour,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
        height: kBottomContainerheight.toDouble(),
        padding: const EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
