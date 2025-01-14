
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/calculator_brain.dart';


class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiResult,required this.resultText,required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),

              ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                  colour: kActiveCardColor,
    cardChild: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
    resultText.toUpperCase(),
    style: kResultTextStyle,


    ),
      Text(
        bmiResult,
        style: kBMITextStyle,
      ),
      Text(
        interpretation,
        style: kBodyTextStyle,
        textAlign: TextAlign.center,
      )
    ],
    ),
              ),
          ),
    GestureDetector(
    onTap: (){
    Navigator.pop(context);

    },
    child: Container(
    child: Center(
    child: Text(
    'RE-CALCULATE',
    style: kLargeButtonTextStyle,
    ),
    ),
    color: kBottonContainerColor,
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(top:20.0),
    width: double.infinity,
    height: kBottonContainerHeight * 0.8, // Reduced height
    ),
    ),
        ],
      ),
    );
  }
}
