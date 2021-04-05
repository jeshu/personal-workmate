import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome to',
          style: Theme.of(context).textTheme.headline6,
        ),
        RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: 'MY',
              style: Theme.of(context).textTheme.headline5,
              children: <TextSpan>[
                TextSpan(
                  text: 'ASSISTANT',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ],
            )),
        SizedBox(
          height: 30,
        ),
        Text(
          'Please sign in to continue',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
