import 'package:flutter/material.dart';
import 'package:loginui/Screens/login.dart';

void main() {
  runApp(Loginui());
}

class Loginui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'LoginUi',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.red),
        home: login());
  }
}
