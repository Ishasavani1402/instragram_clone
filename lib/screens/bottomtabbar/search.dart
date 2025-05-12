// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, equal_keys_in_map
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instragram_clone/list_of_contents/bottom_content.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchcontroller = TextEditingController();
  var images = BottomContent.search_page_img();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
            child: SearchBar(
              controller: searchcontroller,
              hintText: "Search with Meta Ai",
              leading: FaIcon(FontAwesomeIcons.meta),
            ),
          ),
          SizedBox(height: 1),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 124,
                  width: 124,
                  // clipBehavior: Clip.antiAlias,
                  // decoration: BoxDecoration(),
                  child: Image.network(
                    images[index]["img"].toString(),
                    fit: BoxFit.cover,
                  ),
                );
              },
              itemCount: images.length,
            ),
          ),
        ],
      ),
    );
  }
}
