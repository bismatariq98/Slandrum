import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slandrum/layers/backendLayer/girdModel.dart';
class Reward extends StatefulWidget {
  @override
  _RewardState createState() => _RewardState();
}

class _RewardState extends State<Reward> {
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
      backgroundColor: Color(0xFFE4EBEB),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
                  child: Column(

            children:[
              Container(
    height: Get.height/2 -200,
    width: Get.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      
      Image.asset("asset/family.png",height:60,width:60),
       Image.asset("asset/piiic.png",height:60,width:60),
          Image.asset("asset/piiic.png",height:60,width:60),
           Image.asset("asset/piiic.png",height:60,width:60),
            Image.asset("asset/filter.png",height:60,width:60),
             Image.asset("asset/three.png",height:60,width:60),
    ],),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal:20.0),
    child: Container(
      height: 50,
      width: Get.width,
      decoration: BoxDecoration(
          image:DecorationImage(image: AssetImage("asset/line.png"),fit: BoxFit.cover))
      ),
  ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal:25.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Punkte desi Weshi"),
           Text("Punkte desi Weshi"),

      ],),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal:25.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
       Row(children: [
            Image.asset("asset/piiic.png",height: 60,width: 60,),
            Column(children: [
              Image.asset("asset/coin.png",height: 60,width: 60,),
              SizedBox(height:10),
              Text("100 Punkte/Points")
            ],),

       ],),
          Column(children: [
              Image.asset("asset/coincollection.png",height: 60,width: 60,),
              SizedBox(height:10),
              Text("1000 Punkte/Points")
            ],),
      ],),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 20),
      child: Divider(height: 5,color: Colors.white,thickness: 5,),
    ),

    Container(
      height: 600,
      width: Get.width,
      child: GridView.builder(
          itemCount: gridModel.length,
          gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,mainAxisSpacing: 50,
          crossAxisSpacing: 4), itemBuilder:(context,i){
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: Get.height
                ,
                width: Get.width,
                child: Column(children:[
                  Text(gridModel[i].headingText),
                  Container(height: 90,width: 90,decoration: BoxDecoration(
                    image:DecorationImage(image: AssetImage(gridModel[i].image),fit: BoxFit.cover)
                  ),),
                  Text(gridModel[i].belowText),
                ]),
              ),
            );
          }),
    )
    
      ]),
        ),

      
      ),     
    );
  }
}