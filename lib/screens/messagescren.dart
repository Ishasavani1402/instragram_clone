// ignore_for_file: use_super_parameters, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instragram_clone/list_of_contents/message_content.dart';
import 'package:instragram_clone/widgets/custome_text.dart';

// ignore: use_key_in_widget_constructors
class Messagescren extends StatefulWidget {
  @override
  _Messagescreen createState() => _Messagescreen();
}

class _Messagescreen extends State<Messagescren> {
  var messages = MessageContent.messages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: CustomeText(
          text: "Isha Savani",
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontcolor: Colors.white,
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: SearchBar(
              leading: FaIcon(FontAwesomeIcons.meta),
              hintText: "Search with meta Ai",
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    maxRadius: 20,
                    backgroundImage: NetworkImage(
                      messages[index]['img'].toString(),
                    ),
                  ),
                  title: CustomeText(
                    text: messages[index]['title'].toString(),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontcolor: Colors.white,
                  ),
                  subtitle: CustomeText(
                    text: messages[index]['subtitle'].toString(),
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    fontcolor: Colors.white,
                  ),
                  trailing: Icon(Icons.camera_alt_outlined),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
