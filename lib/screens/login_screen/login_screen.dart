import 'package:flutter/material.dart';
import 'package:personal_workmate/components/form_box.dart';
import 'dart:math';
import 'package:personal_workmate/components/hero_logo.dart';
import 'package:personal_workmate/screens/login_screen/login_form.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Stack(children: <Widget>[
        Positioned(
          right: MediaQuery.of(context).size.width * 0.05,
          top: MediaQuery.of(context).size.height * 0.15,
          child: Container(
            child: HeroLogo(
              size: 150,
            ),
          ),
        ),
        FormBox(),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.05,
          top: MediaQuery.of(context).size.height * 0.275,
          child: LoginForm(),
        ),
      ]),
    );
  }
}
