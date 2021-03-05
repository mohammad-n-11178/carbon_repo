import 'package:flutter/material.dart';
import 'question.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;

  final _question = [
    "what\'s your favorite color?",
    "what\'s your favorite food?"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          Scaffold(body: Container(child: Question(_question[_questionIndex]))),
    );
  }
}
