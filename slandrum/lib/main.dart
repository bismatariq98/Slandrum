import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slandrum/layers/presentationLayer/screens/createHome.dart';
import 'package:slandrum/layers/presentationLayer/screens/loginScreen.dart';
import 'package:slandrum/layers/presentationLayer/screens/mainScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: LoginScreen(),
     
    );}}
    