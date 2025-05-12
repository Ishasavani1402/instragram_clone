// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';

class YouWidget extends StatelessWidget {
  String img_path;
  String? trailling_img_path;
  String text1;
  String text2;
  String text3;
  Widget? button;

  YouWidget({
    required this.img_path,
     this.trailling_img_path,
    required this.text1,
    required this.text2,
    required this.text3,
    this.button,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 20,
        backgroundImage: AssetImage(img_path),
      ),
      title: RichText(
        text: TextSpan(
          text: text1,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: text2,
              style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(
              text: text3,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      trailing:
          button != null
              ? button!
              : Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(trailling_img_path!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
    );
  }
}
