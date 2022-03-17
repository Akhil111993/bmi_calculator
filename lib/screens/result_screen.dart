import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/new_container.dart';

class ResultScreen extends StatelessWidget {
  String bmiLabel;
  String bmiValue;
  String adviceText;

  ResultScreen(this.bmiValue, this.bmiLabel, this.adviceText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppTitle),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  kSecondScreenHeadingText,
                  style: kBigWhiteTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ContainerNew(
                color: kContainerInactiveColor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      bmiLabel.toUpperCase(),
                      style: kGreenTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      bmiValue,
                      style: kBigTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        adviceText,
                        style: kWhiteTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonText: kCalcAgainBtnText,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
