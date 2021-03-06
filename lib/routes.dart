import 'package:carbon/screens/home.dart';
import 'package:flutter/widgets.dart';
import 'package:carbon/screens/subjects/light.dart';
import 'package:carbon/screens/subjects/solid.dart';
import 'screens/login.dart';
import 'package:carbon/quiz_app.dart';
import 'screens/setting.dart';
import 'package:carbon/screens/subjects/analystics2.dart';
import 'package:carbon/screens/subjects/ch1.dart';
import 'package:carbon/screens/subjects/ch2.dart';
import 'package:carbon/screens/subjects/english1.dart';
import 'package:carbon/screens/subjects/english2.dart';
import 'package:carbon/screens/subjects/english3.dart';
import 'package:carbon/screens/subjects/english4.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  'homepage': (context) {
    return Home();
  },
  'Login': (context) {
    return Login();
  },
  "setting": (context) {
    return Setting();
  },
  "English1_page": (context) {
    return English1();
  },
  "English2_page": (context) {
    return English2();
  },
  "English3_page": (context) {
    return English3();
  },
  "English4_page": (context) {
    return English4();
  },
  "analystics2_page": (context) {
    return Analystics2();
  },
  "ch1_page": (context) {
    return Ch1();
  },
  "ch2_page": (context) {
    return Ch2();
  },
  "Light_page": (context) {
    return Light();
  },
  "Solid_page": (context) {
    return Solid();
  },
  "Quiz_app": (context) {
    return QuizApp();
  }
};
