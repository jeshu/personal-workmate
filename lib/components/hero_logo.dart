import 'package:flutter/material.dart';

class HeroLogo extends StatelessWidget {
  const HeroLogo({Key key, this.size}) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: CircleAvatar(
        foregroundImage: AssetImage(
          'assets/yoga-pose.png',
        ),
        backgroundColor: Colors.white,
        minRadius: size / 2,
        maxRadius: size / 2,
        child: Padding(
          padding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
