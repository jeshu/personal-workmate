import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>
    with SingleTickerProviderStateMixin {
  String email = "";
  String password = "";

  AnimationController _controller;
  Animation<double> _welcomeAnimation;
  Animation<double> _titleAnimation;
  Animation<double> _signInTextAnimation;
  Animation _emailFieldAnimation;
  Animation _passwordAnimation;
  Animation _forgetPasswordAnimation;
  Animation _registerAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _welcomeAnimation = Tween(begin: 0.0, end: 20.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.6, 0.8, curve: Curves.easeIn),
      ),
    );
    _titleAnimation = Tween(begin: 0.0, end: 24.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.8, 0.10, curve: Curves.easeIn),
      ),
    );
    _signInTextAnimation = Tween(begin: 0.0, end: 12.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.6, 0.8, curve: Curves.easeIn),
      ),
    );

    _controller.addListener(() {
      setState(() {});
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to',
            style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: _welcomeAnimation?.value ?? 0.1,
                ),
          ),
          RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: 'MY',
                style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: _titleAnimation?.value ?? 0.1,
                    ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'ASSISTANT',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Text(
            'Please sign in to continue',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontSize: _signInTextAnimation?.value ?? 0.0),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    icon: Icon(Icons.email_outlined),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: 'password', icon: Icon(Icons.lock_outline)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 120,
          ),
          TextButton(child: Text('Forget Password'), onPressed: () {}),
          TextButton(child: Text('Register'), onPressed: () {}),
        ],
      ),
    );
  }
}
