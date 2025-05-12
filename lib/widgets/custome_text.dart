// ignore_for_file: use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  String text;
  TextAlign? textAlign;
  double fontSize;
  FontWeight fontWeight;
  Color fontcolor;

  CustomeText({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.fontcolor,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "MyFont",
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontcolor,
      ),
    );
  }
}
