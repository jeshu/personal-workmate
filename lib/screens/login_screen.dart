import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: 'logo',
        child: Icon(
          Icons.sports,
          size: 100,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
