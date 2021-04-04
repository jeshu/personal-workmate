import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Icon(
              Icons.play_for_work_outlined,
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
