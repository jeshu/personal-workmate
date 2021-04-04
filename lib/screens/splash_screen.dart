import 'package:flutter/material.dart';
import 'package:personal_workmate/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, LoginScreen.routeName);
    });

    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Expanded(
          child: Center(
            child: Hero(
              tag: 'logo',
              child: Icon(
                Icons.sports,
                size: 200,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
