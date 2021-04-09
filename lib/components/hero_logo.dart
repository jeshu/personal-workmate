import 'package:flutter/material.dart';

class HeroLogo extends StatelessWidget {
  const HeroLogo({Key key, this.size}) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Hero(
        tag: 'logo',
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/yoga-pose.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
