import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/weight_and_age_column.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bmi_brain.dart';
import '../constants.dart';
import '../widgets/card_icon_text.dart';
import '../widgets/new_container.dart';

enum Gender { male, female }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? gender;

  int _height = 180;
  int _weight = 60;
  int _age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(kAppTitle)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerNew(
                    onPressed: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    color: gender == Gender.male
                        ? kContainerActiveColor
                        : kContainerInactiveColor,
                    childWidget: CardIconText(
                      text: kMaleText,
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ContainerNew(
                    onPressed: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    color: gender == Gender.female
                        ? kContainerActiveColor
                        : kContainerInactiveColor,
                    childWidget: CardIconText(
                      text: kFemaleText,
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContainerNew(
              color: kContainerInactiveColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    kHeightText,
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        _height.toString(),
                        style: kBigTextStyle,
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      const Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                      inactiveTrackColor: Colors.grey,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      overlayColor: Color(0x29EB1555),
                      thumbColor: Colors.pink,
                      activeTrackColor: Colors.white,
                    ),
                    child: Slider(
                      value: _height.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          _height = value.round();
                        });
                      },
                      max: 220.0,
                      min: 120.0,
                      // activeColor: Colors.white,
                      // inactiveColor: Colors.grey,
                      // thumbColor: Colors.pink,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: WeightAgeColumn(
                    label: kWeightText,
                    value: _weight,
                    onMinusPressed: () {
                      setState(() {
                        _weight--;
                      });
                    },
                    onPlusPressed: () {
                      setState(() {
                        _weight++;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: WeightAgeColumn(
                    label: kAgeText,
                    value: _age,
                    onMinusPressed: () {
                      setState(() {
                        _age--;
                      });
                    },
                    onPlusPressed: () {
                      setState(() {
                        _age++;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonText: kBmiCalcBtnText,
            onPressed: () {
              BMIBrain bmiBrain = BMIBrain(height: _height, weight: _weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(bmiBrain.getBMI(),
                      bmiBrain.getResultText(), bmiBrain.getAdviceText()),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
