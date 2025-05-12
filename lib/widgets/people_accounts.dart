// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:instragram_clone/widgets/custome_text.dart';

class PeopleAccounts extends StatelessWidget {
  String img_path;
  String text1;
  String text2;

  PeopleAccounts({
    required this.img_path,
    required this.text1,
    required this.text2,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 59, 59, 59),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: AssetImage(img_path),
                ),
                SizedBox(height: 10),
                CustomeText(
                  text: text1,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontcolor: Colors.white,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: CustomeText(
                    text: text2,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontcolor: Colors.white,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 5),
                      child: Text(
                        "Follow",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
