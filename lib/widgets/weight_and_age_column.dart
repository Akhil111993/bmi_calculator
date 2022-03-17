import 'package:bmi_calculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'new_container.dart';

class WeightAgeColumn extends StatelessWidget {
  String label;
  int value;
  Function()? onPlusPressed;
  Function()? onMinusPressed;

  WeightAgeColumn(
      {required this.value,
      required this.label,
      this.onMinusPressed,
      this.onPlusPressed});

  @override
  Widget build(BuildContext context) {
    return ContainerNew(
      childWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: kTextStyle,
          ),
          Text(
            value.toString(),
            style: kBigTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: onMinusPressed,
              ),
              const SizedBox(
                width: 10.0,
              ),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: onPlusPressed,
              ),
            ],
          ),
        ],
      ),
      color: kContainerInactiveColor,
    );
  }
}
