// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Mentions extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        height:150,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/f3.png"),fit:
          BoxFit.fitHeight)
        ),
      ),
    );
  }

}