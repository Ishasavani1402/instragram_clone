// ignore_for_file: use_key_in_widget_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instragram_clone/screens/bottomnavigation.dart';
// import 'package:instragram_clone/screens/homescreen.dart';
import 'package:instragram_clone/screens/login.dart';
import 'package:instragram_clone/widgets/custome_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    getdata();
  }

  void getdata() async {
    var sharepref = await SharedPreferences.getInstance();
    var islogin = sharepref.getBool("login");
    Timer(Duration(seconds: 4), () {
      if (islogin != null) {
        if (islogin) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Bottomnavigation()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 500,
              child: Image.asset(
                "assets/images/instagramicon.png",
                height: 70,
                width: 70,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 60),
                CustomeText(
                  text: "from",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontcolor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Image.asset(
        "assets/images/from_meta.png",
        height: 100,
        width: 100,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
