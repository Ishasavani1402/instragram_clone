// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:instragram_clone/list_of_contents/insta_post.dart';

class PostProfile extends StatefulWidget {
  @override
  _PostProfileState createState() => _PostProfileState();
}

class _PostProfileState extends State<PostProfile> {
  var post = InstaPost.mypost();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: post.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(
              post[index]['img'].toString(),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
