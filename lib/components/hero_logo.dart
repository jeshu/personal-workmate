import 'package:flutter/material.dart';

class HeroLogo extends StatelessWidget {
  const HeroLogo({Key key, this.size}) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: Icon(
        Icons.sports,
        size: size,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
