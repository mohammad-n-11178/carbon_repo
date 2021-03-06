import 'dart:ui';
import 'package:carbon/routes.dart';
import 'package:flutter/material.dart';
import 'services/applocalizations.dart';
import 'screens/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
          primaryColor: Colors.blueAccent[500],
          accentColor: Colors.lightBlue[300],
          backgroundColor: Colors.grey[300],
          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
        ),
        home: Home(),
        routes: routes
        //end
        );
  }
}
