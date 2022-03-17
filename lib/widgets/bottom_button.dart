import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;
  BottomButton({this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              buttonText,
              style: const TextStyle(
                fontSize: kFontSize,
              ),
            ),
          ),
        ),
        height: kBottomContainerHeight,
        decoration: const BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kCornerRadius),
            topRight: Radius.circular(kCornerRadius),
          ),
        ),
      ),
    );
  }
}
