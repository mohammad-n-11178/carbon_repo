import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/subjects/light.dart';
import 'package:flutter_app/pages/subjects/solid.dart';
import 'pages/login.dart';
import 'components/applocalizations.dart';
import 'pages/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'pages/setting.dart';
import 'package:flutter_app/pages/subjects/analystics2.dart';
import 'package:flutter_app/pages/subjects/ch1.dart';
import 'package:flutter_app/pages/subjects/ch2.dart';
import 'package:flutter_app/pages/subjects/english1.dart';
import 'package:flutter_app/pages/subjects/english2.dart';
import 'package:flutter_app/pages/subjects/english3.dart';
import 'package:flutter_app/pages/subjects/english4.dart';

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
        }
        //end
        );
  }
}
