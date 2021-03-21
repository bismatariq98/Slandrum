import 'package:get/get.dart';
import 'package:slandrum/layers/presentationLayer/screens/createHome.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';

class MaleFemale extends StatefulWidget {
  @override
  _MaleFemaleState createState() => _MaleFemaleState();
}

class _MaleFemaleState extends State<MaleFemale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage("asset/malefemale.jpg",),fit:BoxFit.cover)),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("data"),
             GestureDetector(
               onTap: (){
                 Get.to(CreateHome());
               },
                      child: Container(
                         height: 80,
                         width: 80,
                        
                 child:Text("Jnab")
               ),
             ),
           ],
         ),
      ),
    );
  }
}