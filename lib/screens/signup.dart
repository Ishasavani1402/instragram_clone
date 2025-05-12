// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instragram_clone/screens/bottomnavigation.dart';
import 'package:instragram_clone/screens/login.dart';
import 'package:instragram_clone/widgets/buttons.dart';
import 'package:instragram_clone/widgets/text_field.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void submitdata() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Bottomnavigation()),
      );
    }
  }

  String? validemail(value) {
    if (value!.isEmpty) {
      return 'Please enter your email';
    }
    RegExp emailcheck = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9[a-zA-Z]+",
    ); //
    if (!emailcheck.hasMatch(value)) {
      return "please enter valid email address";
    }
    return null;
  }

  String? validpassword(value) {
    if (value!.isEmpty) {
      return 'Please enter your phone number';
    }
    if (value.length != 6) {
      return 'Please enter 6 digit phone number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/instragram.png",
                  width: 200,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: formkey,
                    child: CustomeTextField(
                      keybordtype: TextInputType.name,
                      hinttext: "Username",
                      suffixIcon: Icon(Icons.verified_user),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your username';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    // key: formkey,
                    child: CustomeTextField(
                      keybordtype: TextInputType.emailAddress,
                      hinttext: "email address",
                      suffixIcon: Icon(Icons.email_outlined),
                      validator: validemail,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Form(
                    // key: formkey,
                    child: CustomeTextField(
                      obcuretext: true,
                      keybordtype: TextInputType.visiblePassword,
                      hinttext: "password",
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      validator: validpassword,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Buttons(callback: submitdata, text: "Sign up"),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: RichText(
        text: TextSpan(
          text: "Already have an account? ",
          style: TextStyle(
            fontFamily: "MyFont",
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: "Sign in",
              style: TextStyle(
                fontFamily: "MyFont",
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.blue,
              ),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
