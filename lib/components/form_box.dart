import 'package:flutter/material.dart';
import 'dart:math';

class FormBox extends StatefulWidget {
  // const FormBox({Key key, this.animationController}) : super(key: key);

  @override
  _FormBoxState createState() => _FormBoxState();
}

class _FormBoxState extends State<FormBox> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _opacity;
  Animation _angle;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));

    _opacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 200.0, curve: Curves.easeInCirc)));

    // _angle = Tween(begin: 0, end: (pi / 4) * 100).animate(CurvedAnimation(
    //     parent: _animationController,
    //     curve: Interval(200, 400, curve: Curves.easeInCirc)));

    _animationController.forward();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _opacity.value,
      child: Transform.rotate(
        angle: pi / 4, //_angle.value.toDouble() / 100,
        child: SizedBox(
          width: MediaQuery.of(context).size.height * 0.6,
          height: MediaQuery.of(context).size.height * 0.6,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 32,
                  spreadRadius: -28,
                )
              ],
              borderRadius: BorderRadius.circular(60.0),
            ),
          ),
        ),
      ),
    );
  }
}
