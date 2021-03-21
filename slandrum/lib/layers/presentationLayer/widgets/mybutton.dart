import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyButton extends StatelessWidget {
  final String buttonName;
  final Function onPressed;
  final double containerHeight;
  final double textFontSize;
  final Color color;
  MyButton({
    this.containerHeight,
    this.buttonName,
    this.onPressed,
    this.textFontSize,
    this.color = const Color(0xff19ba19),
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onPressed,
          child: Container(
        color: Colors.white,
        height: containerHeight,
        width: Get.width/2,
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize:textFontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
