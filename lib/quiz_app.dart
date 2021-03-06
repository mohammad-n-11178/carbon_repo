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
      if (_questionIndex <= _question.length - 1) {
        _questionIndex += 1;
      }
    });
    print(_questionIndex);
    print("answer chosen");
  }

  final List<Map<String, Object>> _question = [
    {
      "questionText": "what\'s your favorite color?",
      "answers": ["black", "red", "yellow", "white"]
    }, //index 0
    {
      "questionText": "what\'s your favorite food?",
      "answers": ["rice", "tomatto", "yougert", "apple"]
    }, //index 1
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
            Question(_question[_questionIndex]["questionText"]),
            Divider(
              thickness: 0.2,
            ),
            SizedBox(height: 10),
            //here we will convert the object(list) to strings   , and it will return each one as _answer
            ...(_question[_questionIndex]["answers"] as List<String>)
                .map((_answer) {
              return Answer(answerQuestion, _answer);
            }),
          ],
        )),
      ),
    );
  }
}
