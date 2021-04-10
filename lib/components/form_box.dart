import 'package:flutter/material.dart';

class FormBox extends StatelessWidget {
  final double opacity;
  final double angle;
  final double size;

  const FormBox(
      {Key key,
      @required this.opacity,
      @required this.angle,
      @required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Transform.rotate(
        angle: angle, //_angle.value.toDouble() / 100,
        child: SizedBox(
          width: size,
          height: size,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFFE7E7DE),
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
