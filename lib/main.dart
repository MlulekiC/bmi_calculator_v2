import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'results_page.dart';
import 'constants.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
      routes: {
        //'/': (context) => LandingPage(),
        '/results': (context) => MyResult(),
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: kBackGroundColor,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E27),
        iconTheme: const IconThemeData(size: 100.0, color: Colors.white),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
