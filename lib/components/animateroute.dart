import 'package:flutter/material.dart';

///this animation to go from page to page with slide mothion
///

class SlideRtight extends PageRouteBuilder {
  final page;
  SlideRtight({this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              var begin = Offset(1, 0); //this for x,y
              var end = Offset(0, 0); //this have to be 0,0 to work correctly
              var tween = Tween(begin: begin, end: end);
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
              // ,transitionDuration:
            });
}

class SlideTop extends PageRouteBuilder {
  final page;
  SlideTop({this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              var begin = Offset(0, 1); //this for x,y
              var end = Offset(0, 0); //this have to be 0,0 to work correctly
              var tween = Tween(begin: begin, end: end);
              var curvesanimation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInOut);
              return SlideTransition(
                position: tween.animate(curvesanimation),
                child: child,
              );
            });
}

class EaseinAnimate extends PageRouteBuilder {
  final page;
  EaseinAnimate({this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              var begin = 0.0; //should be float
              var end = 1.0; //this have to be 0,0 to work correctly
              var tween = Tween(begin: begin, end: end);
              var curvesanimation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInBack);
              return ScaleTransition(
                scale: tween.animate(curvesanimation),
                child: child,
              );
            });
}

class TheRotationTransition extends PageRouteBuilder {
  //تدوير الصفحة بالانتقال
  final page;
  TheRotationTransition({this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              var begin = 0.0; //should be float
              var end = 1.0; //this have to be 0,0 to work correctly
              var tween = Tween(begin: begin, end: end);
              var curvesanimation =
                  CurvedAnimation(parent: animation, curve: Curves.linear);
              return RotationTransition(
                turns: tween.animate(curvesanimation),
                child: child,
              );
            });
}

class OpenFromCenter extends PageRouteBuilder {
  //تكبر من المنتصف
  final page;
  OpenFromCenter({this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              return Align(
                child: SizeTransition(
                  sizeFactor: animation,
                  child: child,
                ),
              );
            });
}

class Fade extends PageRouteBuilder {
  //اختفاء
  final page;
  Fade({this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            });
}

class New extends PageRouteBuilder {
  //this is tow animation at the same time
  final page;
  New({this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              var begin = 0.0;        //should be float
              var end = 1.0;          //this have to be 0,0 to work correctly
              var tween = Tween(begin: begin, end: end);
              var curvesanimation = CurvedAnimation(
                  parent: animation, curve: Curves.linearToEaseOut);
              return ScaleTransition(
                scale: tween.animate(curvesanimation),
                child: RotationTransition(     //here we put the second animation
                  turns: tween.animate(curvesanimation),
                  child: child,
                ),
              );
            });
}
