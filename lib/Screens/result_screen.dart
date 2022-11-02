import 'package:bmi_calculator/Components/bottombtn.dart';
import 'package:bmi_calculator/Components/reusablecard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, 
    required this.bmiResult,
    required this.resultText,
    required this.resultmsg
  });
  final String bmiResult,resultText,resultmsg;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(20),
                child: const Text(
              "Your Result",
              style: kNumberTextStyle,
            )),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kInActiveCardColour,
              childs: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Text(
                    widget.resultText.toUpperCase(),
                    style: const TextStyle(fontSize: 22, color: Color(0xFF22E67B)),
                  ),
                  Text(
                    widget.bmiResult,
                    style: kNumberTextStyle,
                  ),
                  Text(
                    widget.resultmsg,
                    style: const TextStyle(
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const BottomPinkButton(txt: "RE-CALCULATE"))
        ],
      ),
    );
  }
}
