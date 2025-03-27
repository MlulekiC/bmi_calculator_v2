import 'package:flutter/material.dart';

const kBackGroundColor = Color(0xFF0A0D20);
const kActiveButtonColor = Color(0xFF1D1E33);
const kInactiveButtonColor = Color(0xFF121325);
const kCalcActionButtonColor = Color(0xFFEB1557);
const kNumberTextStyle = TextStyle(fontSize: 55.0, fontWeight: FontWeight.w900);
const kResultTextStyle = TextStyle(fontSize: 45.0, fontWeight: FontWeight.w700);

const kLargeButtonTextStyle = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

const kLabelTextStyle = TextStyle(fontSize: 25.0, color: Color.fromARGB(255, 153, 142, 142));

const kResultLabelTextStyle = TextStyle(fontSize: 25.0, color: Color.fromARGB(255, 54, 173, 64));

Widget setActionButtonText(String str) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
    color: kCalcActionButtonColor,
    width: double.infinity,
    height: 100.0,
    child: TextButton(
      onPressed: () {},
      child: Center(
        child: Text(
          str,
          style: kLargeButtonTextStyle,
        ),
      ),
    ),
  );
}

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonText, required this.onTap});

  final String buttonText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
      color: kCalcActionButtonColor,
      width: double.infinity,
      height: 100.0,
      child: TextButton(
        onPressed: onTap,
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
