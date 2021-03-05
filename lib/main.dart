import 'dart:ui';
import 'package:Carbon/quiz_app.dart';
import 'package:flutter/material.dart';
import 'package:Carbon/screens/subjects/light.dart';
import 'package:Carbon/screens/subjects/solid.dart';
import 'screens/login.dart';
import 'services/applocalizations.dart';
import 'screens/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/setting.dart';
import 'package:Carbon/screens/subjects/analystics2.dart';
import 'package:Carbon/screens/subjects/ch1.dart';
import 'package:Carbon/screens/subjects/ch2.dart';
import 'package:Carbon/screens/subjects/english1.dart';
import 'package:Carbon/screens/subjects/english2.dart';
import 'package:Carbon/screens/subjects/english3.dart';
import 'package:Carbon/screens/subjects/english4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        //start
        supportedLocales: [
          Locale('en', ''), // English, no country code
          Locale('ar', ''), // arabic, no country code
        ],
        localizationsDelegates: [
          // ... app-specific localization delegate[s] here
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, suppurtedLocales) {
          for (var suppurtedLocale in suppurtedLocales) {
            if (suppurtedLocale.languageCode == locale.languageCode &&
                suppurtedLocale.languageCode == locale.languageCode) {
              return suppurtedLocale;
            }
          }
          return suppurtedLocales.first;
        },
        title: "Carbon",
        theme: ThemeData(
          fontFamily: 'Cairo',
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: Colors.blueAccent[700],
          accentColor: Colors.lightBlue[300],
          backgroundColor: Colors.grey[300],
          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
        ),
        home: Home(),
        routes: {
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
        }
        //end
        );
  }
}
