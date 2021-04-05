import 'package:flutter/material.dart';
import 'dart:math';

class FormBox extends StatelessWidget {
  const FormBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * -0.4,
      top: MediaQuery.of(context).size.height * 0.25,
      child: Transform.rotate(
        angle: pi / 4,
        child: SizedBox(
          width: MediaQuery.of(context).size.height * 0.6,
          height: MediaQuery.of(context).size.height * 0.6,
          child: Expanded(
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
      ),
    );
  }
}
