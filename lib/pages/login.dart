import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/applocalizations.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart' as intl; //this for auto dirctionality

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  //start form controller
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmpassword = new TextEditingController();

  GlobalKey<FormState> formstatesignin = new GlobalKey<FormState>();
  GlobalKey<FormState> formstatesignup = new GlobalKey<FormState>();

  String validglobal(String val) {
    if (val.trim().isEmpty) {
      return 'NOOOOOOOOO EMpty';
    }
  }

  String validusername(String val) {
    if (val.isEmpty) {
      return "username can't be empty";
    }
    if (val.length < 4) {
      return "username can't be less than 4 letters";
    }
    if (val.length > 20) {
      return "username can't be more than 20 letters";
    }
  }

  String validEmail(String val) {
    if (val.isEmpty) {
      return "email can't be empty";
    }
    if (val.length < 4) {
      return "email can't be less than 4 letters";
    }
    if (val.length > 25) {
      return "email can't be more than 25 letters";
    }
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(val)) {
      return "email not valid";
    }
  }

  String validpassword(String val) {
    if (val.isEmpty) {
      return "password can't be empty";
    }
    if (val.length < 8) {
      return "password can't be less than 8 charecters";
    }
    if (val.length > 20) {
      return "password can't be more than 20 letters";
    }
  }

  String validconfirmpassword(String val) {
    if (val != password.text) {
      return "rewrite passwords";
    }
  }

  signin() {
    var formdata = formstatesignin.currentState;
    if (formdata.validate()) {
      print('validsignin');
    } else {
      print("invalidsignin");
    }
  }

  signup() {
    var formdata = formstatesignup.currentState;
    if (formdata.validate()) {
      print("validsignup");
    } else {
      print("invalidsignup");
    }
  }

  TapGestureRecognizer _changesign; // to change sign in/up
  bool showsignin = true;

  @override
  void initState() {
    _changesign = new TapGestureRecognizer()
      ..onTap = () {
        setState(() {
          showsignin = !showsignin;
          print(showsignin);
        });
      };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
// var mdh = MediaQuery.of(context).size.height ;

    // page in-general
    return Directionality(
      textDirection: intl.Bidi.detectRtlDirectionality( AppLocalizations.of(context).translate('specifications'))?TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.indigo[50],
          ),
          bottomtop(mdw),
          bottomright(mdw),
          Container(
            height: mdw * 1.9,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                        child: Text(
                      showsignin
                          ? AppLocalizations.of(context).translate("Sign in")
                          : AppLocalizations.of(context).translate("Sign up"),
                      style: TextStyle(
                          fontSize: 23,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  buildContainerAvatar(mdw),
                  showsignin
                      ? buildFormTextSignIn(mdw)
                      : buildFormTextSignUp(mdw),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          InkWell(
                            child: showsignin
                                ? Text(
                                    AppLocalizations.of(context).translate(
                                        "did you forget the password?"),
                                    style: TextStyle(
                                        color: Colors.indigo[800],
                                        fontWeight: FontWeight.w700),
                                  )
                                : SizedBox(),
                            onTap: () {},
                          ),
                          SizedBox(
                            height: showsignin ? 4 : 1,
                          ),
                          RaisedButton(
                            elevation: 10,
                            color: showsignin
                                ? Colors.indigo[100]
                                : Theme.of(context).accentColor,
                            padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal:
                                    20), //symmetric is for size of the button
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  showsignin
                                      ? AppLocalizations.of(context)
                                          .translate("Sign in")
                                      : AppLocalizations.of(context)
                                          .translate("Sign up"),
                                  style: TextStyle(
                                      color: Colors.indigo[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Container(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.indigo[800],
                                    ))
                              ],
                            ),
                            onPressed: showsignin ? signin : signup,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: showsignin
                                        ? AppLocalizations.of(context)
                                            .translate(
                                                "if you don't have account ")
                                        : AppLocalizations.of(context)
                                            .translate("if you have account"),
                                    style: TextStyle(
                                        color: Colors.grey[900],
                                        fontSize: 13,
                                        fontFamily: "Changa")),
                                TextSpan(
                                    recognizer: _changesign,
                                    text: showsignin
                                        ? AppLocalizations.of(context)
                                            .translate("Create new account ")
                                        : AppLocalizations.of(context)
                                            .translate("Sign in"),
                                    style: TextStyle(
                                        color: Colors.indigo[800],
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Changa"))
                              ]),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Row(
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(8, 10, 0, 0)),
                                  Expanded(
                                      child: RaisedButton(
                                          padding: EdgeInsets.all(10),
                                          color: Colors.red[500],
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                  AppLocalizations.of(context)
                                                      .translate(
                                                          "sign in with google"),
                                                  style: TextStyle(
                                                      color: Colors.indigo[50],
                                                      fontSize: 16))
                                            ],
                                          ),
                                          onPressed: () {})),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0)),
                                  Expanded(
                                      child: RaisedButton(
                                          padding: EdgeInsets.all(10),
                                          color: Colors.blue[500],
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                AppLocalizations.of(context)
                                                    .translate(
                                                        "sign in with facebook"),
                                                style: TextStyle(
                                                    color: Colors.indigo[50],
                                                    fontSize: 16),
                                              )
                                            ],
                                          ),
                                          onPressed: () {})),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0)),
                                ],
                              ))
                        ],
                      ))
                ],
              ),
              // endlist view
            ),
          )
        ],
      )),
    );
  }
  //End page in-general

  Center buildFormTextSignIn(double mdw) {
    return Center(
        child: AnimatedContainer(
      curve: Curves.easeOutExpo,
      duration: Duration(milliseconds: 600),
      margin: EdgeInsets.only(top: 40),
      height: 255,
      decoration: BoxDecoration(color: Colors.amber[50], boxShadow: [
        BoxShadow(
            color: HexColor("#313131"), //hex color needs plugin
            spreadRadius: 0.5,
            blurRadius: 0.1),
      ]),
      width: mdw / 1.2,
      child: Form(
        key: formstatesignin,
        child: Container(
          margin: EdgeInsets.only(top: 12, left: 1, right: 1, bottom: 2),
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //start Text user name form
                Text(
                  AppLocalizations.of(context).translate("Email"),
                  style: TextStyle(
                      color: Colors.indigo[800], fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 7),
                buildTextFormFieldAll(
                  AppLocalizations.of(context).translate("type your email"),
                  false,
                  username,
                  validusername,
                ),
                //start Text password form
                Padding(padding: EdgeInsets.all(4)),
                Text(AppLocalizations.of(context).translate("password"),
                    style: TextStyle(
                        color: Colors.indigo[800],
                        fontWeight: FontWeight.w700)),
                SizedBox(height: 7),
                buildTextFormFieldAll(
                    AppLocalizations.of(context)
                        .translate("type your password"),
                    true,
                    password,
                    validpassword)
                //End Text password form
              ],
            ),
          ),
        ),
      ),
    ));
  }

  //  Form for each field
  TextFormField buildTextFormFieldAll(String htext, bool password,
      TextEditingController mycontroller, myvalid) {
    return TextFormField(
      //autovalidate: true,       this is for validate always on and you can put it in one or more
      controller: mycontroller,
      validator: myvalid,
      obscureText: password,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: htext,
        filled: true,
        fillColor: Colors.pink[50],
      ),
    );
  }
  //End Form

  Center buildFormTextSignUp(double mdw) {
    return Center(
        child: AnimatedContainer(
      curve: Curves.easeInExpo,
      duration: Duration(milliseconds: 600),
      margin: EdgeInsets.only(top: 4),
      height: 400,
      decoration: BoxDecoration(color: Colors.amber[50], boxShadow: [
        BoxShadow(
            color: HexColor("#313131"), //hex color need plugin
            spreadRadius: 0.5,
            blurRadius: 0.1),
      ]),
      width: mdw / 1.2,
      child: Form(
        key: formstatesignup,
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 1, right: 1, bottom: 2),
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //start Text user name form
                Text(
                  AppLocalizations.of(context).translate("User name"),
                  style: TextStyle(
                      color: Colors.indigo[800], fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 7),
                buildTextFormFieldAll(
                    AppLocalizations.of(context).translate("enter user name"),
                    false,
                    username,
                    validusername),
                //start Text user name form
                Text(
                  AppLocalizations.of(context).translate("Email"),
                  style: TextStyle(
                      color: Colors.indigo[800], fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 7),
                buildTextFormFieldAll(
                    AppLocalizations.of(context).translate("enter your email"),
                    false,
                    email,
                    validEmail),
                //End Text user name form
                //start Text password form
                Padding(padding: EdgeInsets.all(4)),
                Text(AppLocalizations.of(context).translate("password"),
                    style: TextStyle(
                        color: Colors.indigo[800],
                        fontWeight: FontWeight.w700)),
                SizedBox(height: 7),
                buildTextFormFieldAll(
                    AppLocalizations.of(context).translate("enter  password"),
                    true,
                    password,
                    validpassword),
                //
                //submit Text password form
                Padding(padding: EdgeInsets.all(4)),
                Text(AppLocalizations.of(context).translate("rewrite password"),
                    style: TextStyle(
                        color: Colors.indigo[800],
                        fontWeight: FontWeight.w700)),
                SizedBox(height: 7),
                buildTextFormFieldAll(
                    AppLocalizations.of(context).translate("rewrite password"),
                    true,
                    confirmpassword,
                    validconfirmpassword)
                //submit Text password form
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Container buildContainerAvatar(double mdw) {
    return Container(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 700),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color:
                showsignin ? Colors.indigo[100] : Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 3,
                spreadRadius: 0.1,
              )
            ]),
        child: Stack(
          children: [
            Positioned(
                top: 25,
                right: 25,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.indigo[800],
                )),
            // Positioned(
            //     top: 35,
            //     right: 5,
            //     child: Icon(
            //       Icons.arrow_back,
            //       size: 30,
            //       color: Colors.indigo[800],
            //     ))
          ],
        ),
      ),
    );
  }

  Positioned bottomtop(double mdw) {
    return Positioned(
        child: Transform.scale(
      scale: 1.3,
      child: Transform.translate(
        offset: Offset(0, -mdw / 1.6),
        child: AnimatedContainer(
            duration: Duration(microseconds: 700),
            height: mdw,
            width: mdw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(mdw),
              color: showsignin ? Colors.amber[300] : Colors.indigo[300],
            )),
      ),
    ));
  }

  Positioned bottomright(double mdw) {
    return Positioned(
      top: 260,
      right: mdw / 1.4,
      child: AnimatedContainer(
          duration: Duration(milliseconds: 700),
          height: mdw,
          width: mdw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(mdw),
            color: showsignin
                ? Theme.of(context).primaryColor.withOpacity(0.5)
                : Theme.of(context).accentColor,
          )),
    );
  }
}
