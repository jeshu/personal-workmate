import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:personal_workmate/components/hero_logo.dart';
import 'package:personal_workmate/screens/login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = 'splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addStatusListener((status) {
        print(status);
        if (AnimationStatus.completed == status) {
          Future.delayed(Duration(seconds: 3), () {
            Navigator.pushNamed(this.context, LoginScreen.routeName);
          });
        }
      })
      ..addListener(() {
        setState(() {});
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.orange, Colors.orangeAccent])),
        child: Center(
          child: HeroLogo(
            size: animation.value,
          ),
        ),
      ),
    );
  }
}
