import 'package:flutter/material.dart';
import 'package:personal_workmate/screens/login_screen/login_screen.dart';
import 'package:personal_workmate/screens/logs_screen/logs_screen.dart';
import 'package:personal_workmate/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        primaryColor: Color(0xFF0F3057),
      ),
      initialRoute: LogsScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        LogsScreen.routeName: (context) => LogsScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
      },
    );
  }
}
