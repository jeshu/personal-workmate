import 'package:flutter/material.dart';

class LogsScreen extends StatelessWidget {
  static const String routeName = 'logsScreen';
  const LogsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
      ),
    );
  }
}
