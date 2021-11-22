import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:loginui/Screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  // var sharedPreferences;
  // late SharedPreferences sharedPreferences;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SharedPreferences sharedPreferences;
  @override
  void initState() async {
    super.initState();
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Logged In",
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton.icon(
              onPressed: () {
                sharedPreferences.clear();
                // sharedPreferences.commit();
                Get.offAll(login());
              },
              icon: Icon(Icons.logout_rounded),
              label: Text("Logout"))
        ],
      )),
    );
  }
}
