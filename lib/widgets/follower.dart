// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:instragram_clone/widgets/custome_text.dart';

class Follower extends StatelessWidget {
  String text1;
  String text2;
  double fontsize1;
  double fontsize2;
  FontWeight f_weight1;
  FontWeight f_weight2;
  Color f_color1;

  Follower({
    required this.text1,
    required this.text2,
    required this.fontsize1,
    required this.fontsize2,
    required this.f_weight1,
    required this.f_weight2,
    required this.f_color1,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CustomeText(
            text: text1,
            fontSize: fontsize1,
            fontWeight: f_weight1,
            fontcolor: f_color1,
          ),
          SizedBox(height: 10),
          CustomeText(
            text: text2,
            fontSize: fontsize2,
            fontWeight: f_weight2,
            fontcolor: f_color1,
          ),
        ],
      ),
    );
  }
}
