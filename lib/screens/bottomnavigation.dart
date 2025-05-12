// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instragram_clone/screens/bottomtabbar/home.dart';
import 'package:instragram_clone/screens/bottomtabbar/profile.dart';
import 'package:instragram_clone/screens/bottomtabbar/reels.dart';
import 'package:instragram_clone/screens/bottomtabbar/search.dart';

class Bottomnavigation extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int currentindex = 0;
  List<Widget> pages = [Home(), Search(),  Reels(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,

        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp, color: Colors.white),
            label: "search",
          ),
          // BottomNavigationBarItem(
          //   icon: FaIcon(FontAwesomeIcons.heart, color: Colors.white),
          //   label: "post",
          // ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.heart, color: Colors.white),
            label: "Likes",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.circleUser, color: Colors.white),
            label: "Profile",
          ),
        ],
      ),
      body: IndexedStack(children: pages, index: currentindex),
    );
  }
}
