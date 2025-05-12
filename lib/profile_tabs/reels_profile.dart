// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:instragram_clone/widgets/custome_text.dart';

class ReelsProfile extends StatefulWidget {

  @override
  _ReelProfileState createState() => _ReelProfileState();
}

class _ReelProfileState extends State<ReelsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          height:250,
          width: 150,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/aditya.png"),fit:
              BoxFit.fitHeight)
          ),
        ),
          Positioned(
            top: 210,
            left: 10,
            child: Row(
              children: [
                Icon(Icons.remove_red_eye , color: Colors.white,),
                SizedBox(width: 10,),
                CustomeText(text: "230",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontcolor: Colors.white)
              ],
            ),
          )
      ]
      ),
      
    );
  }
}