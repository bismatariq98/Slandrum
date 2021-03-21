
import 'package:flutter/material.dart';
import 'package:slandrum/layers/presentationLayer/constants/textformfield_textstyle.dart';

class MyTextField extends StatelessWidget {
  final String textName;
  final TextEditingController controller;
  final IconData iconData;
  MyTextField({
    @required this.iconData,
    @required this.controller,
    @required this.textName,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: textFormFieldTextStyle,
      decoration: InputDecoration(
        hintText: textName,
        hintStyle: TextStyle(color:Colors.black),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(
          iconData,
          color: Colors.black,
        ),
       
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
