import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
    this.resultColor,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  final Color? resultColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text("Your Result", style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle.copyWith(
                      color: resultText == 'Normal'
                          ? Colors.green
                          : resultText == 'Dagadt As Fuck -.-"'
                          ? Colors.red
                          : Colors.blue,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle.copyWith(
                      color: resultText == 'Normal'
                          ? const Color.fromARGB(255, 0, 255, 8)
                          : resultText == 'Dagadt As Fuck -.-"'
                          ? const Color.fromARGB(255, 255, 0, 0)
                          : const Color.fromARGB(255, 0, 204, 255),
                    ),
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
