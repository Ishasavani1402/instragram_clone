// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:instragram_clone/reelstab/following.dart';
import 'package:instragram_clone/reelstab/you.dart';

class Reels extends StatefulWidget {
  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 20,
          bottom: TabBar(
            tabs: [Tab(text: "Following"), Tab(text: "you")],
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
          ),
        ),
        body: TabBarView(children: [Following(), You()]),
      ),
    );
  }
}
