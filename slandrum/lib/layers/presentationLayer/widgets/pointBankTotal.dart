import 'package:get/get.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';
Widget pointBankTotal(){

  return Container(
    color: Colors.white,
    height: Get.height/2 - 100,
    width: Get.width,
    child: Row(
      
      children: [
       Column(children: [
          Image.asset("asset/pic.png"),
          Text("10")
       ],)
    ],)
  
  );
}