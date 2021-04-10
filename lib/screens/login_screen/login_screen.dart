import 'package:flutter/material.dart';
import 'package:personal_workmate/components/form_box.dart';
import 'package:personal_workmate/components/hero_logo.dart';
import 'package:personal_workmate/screens/login_screen/login_form.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Stack(children: <Widget>[
        Positioned(
          right: MediaQuery.of(context).size.width * 0.1,
          top: MediaQuery.of(context).size.height * 0.1,
          child: Container(
            child: HeroLogo(
              size: 100,
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * -0.4,
          top: MediaQuery.of(context).size.height * 0.25,
          child: FormBox(),
        ),
        Positioned(
          width: MediaQuery.of(context).size.width * 0.7,
          left: MediaQuery.of(context).size.width * 0.05,
          top: MediaQuery.of(context).size.height * 0.275,
          child: Form(
            child: Stack(
              children: [
                LoginForm(),
                Positioned(
                  bottom: 90,
                  right: 0,
                  child: ElevatedButton(
                    child: Text(
                      'login',
                    ),
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(wordSpacing: 1.5, color: Colors.white)),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
