import 'package:flutter/material.dart';
import 'constants.dart';

class MyResult extends StatelessWidget {
  const MyResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kBackGroundColor,
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 20.0, 0.0, 0.0),
              child: Text(
                'Your Results',
                style: kResultTextStyle,
              ),
            ),
          ),
          const Expanded(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: kInactiveButtonColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'Results text area',
                          style: kResultLabelTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Center(
                        child: Text(
                          '29.8',
                          style: TextStyle(fontSize: 100.0, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text('You are overwieght and need to hit the gym, stop eating soo much!'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
              buttonText: "RE-CALCULATE BMI",
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
