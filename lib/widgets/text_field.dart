// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  // TextEditingController controller = TextEditingController();
  TextInputType keybordtype;
  String hinttext;
  Icon suffixIcon;
  bool? obcuretext = true;
  FormFieldValidator validator;

  CustomeTextField({
    // required this.controller,
    required this.keybordtype,
    required this.hinttext,
    required this.suffixIcon,
    this.obcuretext,
    required this.validator
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 75, 75, 75),
        borderRadius: BorderRadius.circular(5.5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: TextFormField(
          // controller: controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: keybordtype,
          validator: validator,
          // obscureText: obcuretext!,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              fontFamily: "MyFont",
            ),
            suffixIcon: suffixIcon,
            // hintTextDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
