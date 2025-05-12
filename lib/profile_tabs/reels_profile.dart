// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class ReelsProfile extends StatefulWidget {

  @override
  _ReelProfileState createState() => _ReelProfileState();
}

class _ReelProfileState extends State<ReelsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my Reels"),
      ),
      
    );
  }
}