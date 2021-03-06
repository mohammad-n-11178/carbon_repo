import 'package:carbon/answer.dart';
import 'package:flutter/material.dart';
import 'question.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (_questionIndex <= _question.length -1) {
        _questionIndex += 1;
      }
    });
    print(_questionIndex);
    print("answer chosen");
  }

  final _question = [
    "what\'s your favorite color?",
    "what\'s your favorite food?"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Question(_question[_questionIndex]),
            Divider(
              thickness: 0.2,
            ),
            SizedBox(
              height: 10,
            ),
            Answer(answerQuestion, "11"),
            Answer(answerQuestion, "22"),
            Answer(answerQuestion, "33"),
            Answer(answerQuestion, "44"),
          ],
        )),
      ),
    );
  }
}
