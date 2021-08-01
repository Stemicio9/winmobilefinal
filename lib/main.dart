import 'package:flutter/material.dart';
import 'package:winmobilefinal/screens/login.dart';

void main() {
  runApp(BaseScreen());
}


class BaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'W1N',
      home: Login(),
    );
  }

}