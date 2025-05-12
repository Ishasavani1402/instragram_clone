// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instragram_clone/screens/bottomnavigation.dart';
import 'package:instragram_clone/screens/signup.dart';
import 'package:instragram_clone/widgets/buttons.dart';
import 'package:instragram_clone/widgets/custome_text.dart';
import 'package:instragram_clone/widgets/text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void submitdata() async {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      var sharepref = await SharedPreferences.getInstance();
      sharepref.setBool("login", true);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Bottomnavigation()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Invalid Email or Password")));
    }
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
                      keybordtype: TextInputType.emailAddress,
                      hinttext: "phone no , username or email address",
                      suffixIcon: Icon(Icons.email_outlined),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
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
                    child: CustomeTextField(
                      obcuretext: true,
                      keybordtype: TextInputType.visiblePassword,
                      hinttext: "password",
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: CustomeText(
                        text: "Forgot Password?",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontcolor: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Buttons(callback: submitdata, text: "Log in"),
                ),
                Divider(
                  color: const Color.fromARGB(255, 104, 104, 104),
                  thickness: 1.5,
                  height: 100,
                  indent: 10,
                  endIndent: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.blue),
                    SizedBox(width: 10),
                    CustomeText(
                      text: "Login with facebook",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontcolor: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: RichText(
        text: TextSpan(
          text: "Don't have an account? ",
          style: TextStyle(
            fontFamily: "MyFont",
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: "Sign up",
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
                        MaterialPageRoute(builder: (context) => Signup()),
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
