// ignore_for_file: use_super_parameters, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instragram_clone/list_of_contents/story_content.dart';
import 'package:instragram_clone/screens/messagescren.dart';
import 'package:instragram_clone/widgets/custome_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var storycontent = StoryContent.stories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 17, 17, 17),
        // automaticallyImplyLeading: false,
        leading: Image.asset("assets/images/instragram.png"),
        leadingWidth: 100,
        actionsPadding: EdgeInsets.all(10),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Messagescren()),
              );
            },
            icon: Icon(Icons.send, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 1000,
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
                        padding: const EdgeInsets.only(top: 10),
                        child: CustomeText(
                          text: storycontent[index]['name'],
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                          fontcolor: Colors.white,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            // SizedBox(height: 80, child: SizedBox(height: 20, child: Stories())),
            SizedBox(height: 20),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsynwv-5qtogtOwJbIjaPFJUmHpzhxgqIAug&s",
                ),
              ),
              title: CustomeText(
                text: "Isha Savani",
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontcolor: const Color.fromRGBO(255, 255, 255, 1),
              ),
              subtitle: CustomeText(
                text: "Surat , Gujarat",
                fontSize: 15,
                fontWeight: FontWeight.normal,
                fontcolor: Colors.white,
              ),
              trailing: Icon(Icons.more_vert),
            ),
            Image.asset("assets/images/f3.png", fit: BoxFit.scaleDown),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.heart),
                  SizedBox(width: 12),
                  FaIcon(FontAwesomeIcons.comment),
                  SizedBox(width: 12),
                  FaIcon(FontAwesomeIcons.share),
                  SizedBox(width: 270),
                  FaIcon(FontAwesomeIcons.bookmark),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsynwv-5qtogtOwJbIjaPFJUmHpzhxgqIAug&s",
                    ),
                    maxRadius: 10,
                  ),
                  SizedBox(width: 10),
                  CustomeText(
                    text: "Liked by Isha Savani and 10 others",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontcolor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
