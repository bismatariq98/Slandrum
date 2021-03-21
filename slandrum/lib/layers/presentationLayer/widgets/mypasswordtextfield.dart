
import 'package:flutter/material.dart';
import 'package:slandrum/layers/presentationLayer/constants/textformfield_textstyle.dart';

class MyPasswordTextField extends StatefulWidget {
  final String name;
  final TextEditingController controller;
  MyPasswordTextField({
    @required this.name,
    @required this.controller,
  });
  @override
  _MyPasswordTextFieldState createState() => _MyPasswordTextFieldState();
}

class _MyPasswordTextFieldState extends State<MyPasswordTextField> {
  bool isVisibility = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: isVisibility,
     
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            isVisibility == false ? Icons.visibility_off : Icons.visibility,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              isVisibility = !isVisibility;
            });
          },
        ),
        hintText: widget.name,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.black,
        ),
        hintStyle: TextStyle(color:Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
