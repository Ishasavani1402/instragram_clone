// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:instragram_clone/widgets/custome_text.dart';
import 'package:instragram_clone/widgets/you_widget.dart';

class You extends StatelessWidget {
  const You({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: CustomeText(
                text: "Follow Requests",
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontcolor: const Color.fromARGB(255, 161, 161, 161),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CustomeText(
                text: "New ",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontcolor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            YouWidget(
              img_path: "assets/images/aditya.png",
              text1: "Isha__Savani",
              text2: " Liked your photo",
              text3: " 2h",
              trailling_img_path: "assets/images/f1.png",
            ),
            SizedBox(height: 10),
            YouWidget(
              img_path: "assets/images/raj.png",
              text1: "Isha__Savani and 1 other",
              text2: " Liked your photo",
              text3: " 22h",
              trailling_img_path: "assets/images/f1.png",
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CustomeText(
                text: "This Week",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontcolor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            YouWidget(
              img_path: "assets/images/p1.png",
              trailling_img_path: "assets/images/f2.png",
              text1: "Nik__",
              text2: " comment on your post.",
              text3: " 2h",
            ),
          ],
        ),
      ),
    );
  }
}
