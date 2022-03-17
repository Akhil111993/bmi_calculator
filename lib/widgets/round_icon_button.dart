import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;
  RoundIconButton({required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: const Color(0xFF242647),
      constraints: kSizeConstraints,
      onPressed: onPressed,
      shape: const CircleBorder(),
      elevation: 6.0,
      child: FaIcon(icon),
    );
  }
}
