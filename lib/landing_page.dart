import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'detail_column.dart';
import 'constants.dart';

enum Gender { male, female, none }

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  double weight = 30.0;
  double age = 15;
  int height = 180;

  Gender selectedGender = Gender.none;

  Color maleCardColor = kInactiveButtonColor;
  Color femaleCardColor = kInactiveButtonColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white)),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        child: ReusableCard(
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.male),
                                Text("MALE", style: kLabelTextStyle),
                              ],
                            ),
                            selectedGender == Gender.male ? kActiveButtonColor : kInactiveButtonColor),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        child: ReusableCard(
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.female),
                                Text("FEMALE", style: kLabelTextStyle),
                              ],
                            ),
                            selectedGender == Gender.female ? kActiveButtonColor : kInactiveButtonColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Card(
                  color: Color.fromARGB(255, 18, 19, 39),
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("HEIGHT", style: kLabelTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(), style: kNumberTextStyle),
                          const Text(
                            "cm",
                            style: kLabelTextStyle,
                          )
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                        min: 120,
                        max: 200,
                        activeColor: const Color(0xFFEB1557),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        DetailColumn(age: weight, text: "WEIGHT"),
                        kInactiveButtonColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        DetailColumn(age: age, text: "AGE"),
                        kInactiveButtonColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: BottomButton(buttonText: "CALCULATE YOUR BMI", onTap: setButtomButton),
            )
          ],
        ),
      ),
    );
  }

  void setButtomButton() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyResult()));
  }
}
