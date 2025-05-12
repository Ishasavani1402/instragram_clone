// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:instragram_clone/list_of_contents/story_content.dart';
import 'package:instragram_clone/widgets/custome_text.dart';

class Stories extends StatelessWidget {
  var storycontent = StoryContent.stories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 90,
        child: ListView.builder(
          itemCount: storycontent.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 9, top: 10),
                  child: CircleAvatar(
                    maxRadius: 35,
                    backgroundImage: NetworkImage(
                      storycontent[index]['img'].toString(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, top: 10),
                  child: CustomeText(
                    text: storycontent[index]['name'],
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontcolor: Colors.white,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
