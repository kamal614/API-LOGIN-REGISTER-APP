import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginui/Screens/login.dart';
import 'package:loginui/Screens/register.dart';

void main() {
  runApp(Loginui());
}

class Loginui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'LoginUi',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.red),
        home: Register());
  }
}
