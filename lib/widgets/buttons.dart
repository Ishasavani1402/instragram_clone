// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:instragram_clone/widgets/custome_text.dart';

class Buttons extends StatefulWidget {
  VoidCallback callback;
  String text;

  Buttons({required this.callback , required this.text});
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 500,
      child: ElevatedButton(
        onPressed: widget.callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: CustomeText(
          text: widget.text,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontcolor: Colors.white,
        ),
      ),
    );
  }
}
