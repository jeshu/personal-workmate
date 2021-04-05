import 'package:flutter/material.dart';
import 'package:personal_workmate/components/hero_logo.dart';
import 'package:personal_workmate/screens/login_screen/login_screen.dart';

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
            child: HeroLogo(size: 150),
          ),
        ),
      ),
    );
  }
}
