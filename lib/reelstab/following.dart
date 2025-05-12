// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:instragram_clone/widgets/custome_text.dart';
import 'package:instragram_clone/widgets/you_widget.dart';

class Following extends StatelessWidget {
  const Following({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YouWidget(
                img_path: "assets/images/p2.png",
                button: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: const Color.fromARGB(255, 126, 126, 126),
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 1,
                  ),
                  child: CustomeText(
                    text: "Message",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontcolor: Colors.white,
                  ),
                ),
                text1: "Manish_Rathod ",
                text2: " started Following you",
                text3: " 12h",
              ),
              SizedBox(height: 30),
              YouWidget(
                img_path: "assets/images/p3.png",
                button: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: const Color.fromARGB(255, 126, 126, 126),
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 1,
                  ),
                  child: CustomeText(
                    text: "Message",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontcolor: Colors.white,
                  ),
                ),
                text1: "Mansi__Parikh and 1 other ",
                text2: " started Following you",
                text3: " 2h",
              ),
              SizedBox(height: 30),
              YouWidget(
                img_path: "assets/images/rohit.png",
                button: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: const Color.fromARGB(255, 126, 126, 126),
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 1,
                  ),
                  child: CustomeText(
                    text: "Message",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontcolor: Colors.white,
                  ),
                ),
                text1: "Rohit_Sharma ",
                text2: " started Following you",
                text3: " 24h",
              ),
              SizedBox(height: 30),
              YouWidget(
                img_path: "assets/images/kirtidangadhvi.png",
                button: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: const Color.fromARGB(255, 126, 126, 126),
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 1,
                  ),
                  child: CustomeText(
                    text: "Message",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontcolor: Colors.white,
                  ),
                ),
                text1: "Diaraking and 1 other ",
                text2: " started Following you",
                text3: " 2h",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
