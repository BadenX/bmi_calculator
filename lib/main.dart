import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: false).copyWith(
        scaffoldBackgroundColor: const Color(0xFF090C22),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF090C22),
          elevation: 6,
          surfaceTintColor: Colors.transparent,
        ),
      ),
      home: InputPage(),
    );
  }
}
