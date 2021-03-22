import 'package:get/get.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';

Widget pointBank(){

  return Container(
    color: Colors.white,
    height: Get.height/2 - 150,
    width: Get.width,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal:22.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:15.0),
               child: Column(children: [
                  Image.asset("asset/piiic.png",height: 120,width: 120,),
                   Padding(
                     padding: const EdgeInsets.only(left:35.0),
                     child: Column(
                       children: [
                         Image.asset("asset/coin.png",height: 40,width: 50,),
                         Text("30")
                       ],
                     ),
                   ),
               ],),
             ),
               Padding(
               padding: const EdgeInsets.symmetric(horizontal:15.0),
               child: Column(children: [
                  Image.asset("asset/piiic.png",height: 120,width: 120,),
                  Padding(
                     padding: const EdgeInsets.only(left:35.0),
                     child: Column(
                       children: [
                         Image.asset("asset/coin.png",height: 40,width: 50,),
                         Text("30")
                       ],
                     ),
                   ),
               ],),
             )
          ],),
           Padding(
               padding: const EdgeInsets.symmetric(horizontal:15.0),
               child: Container(
                 height: 150,
                 width: 150,
                 child: Stack(
                   children: [
                     Positioned(
                       top: 0,
                       child: Image.asset("asset/piiic.png",height: 120,width: 120,)),
                       Positioned(
                      top:25,
                      left: 30,
                         child: Center(child: IconButton(icon: Icon(Icons.add,color: Colors.white,size: 35,),onPressed: (){},)))
                   ],
                 ),
               ),
             )
        ],
      ),
    )
  
  );
}