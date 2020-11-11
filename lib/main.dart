import 'dart:ui';
import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'components/applocalizations.dart';
import 'pages/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:easy_localization/easy_localization.dart';
import 'pages/setting.dart';

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
      title: "Phone Store",
      theme: ThemeData(
        fontFamily: 'Changa',
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.indigo[900],
        accentColor: Colors.amber[300],
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
        }
      },
      //end
    );
  }
}
