import 'dart:ui';

import 'package:get/get.dart';
import 'package:slandrum/layers/presentationLayer/constants/my_textstyle.dart';
import 'package:slandrum/layers/presentationLayer/screens/addFamilyMember.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';


class AddContact extends StatefulWidget {
  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
      bool valuefirst = false;  
  bool valuesecond = false; 
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Color(0xFF7BBCD1),
      appBar: AppBar(backgroundColor: Colors.white,),
      body: Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Center(child: Text("Add another Family Member",style: headingStyle,)),
           SizedBox(height:30),
           
           Container(
             decoration: BoxDecoration(
               color:Colors.white
             ),
             width: Get.width -90,
             height: Get.height/2 ,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:[
               Text("Information Via",style: TextStyle(color:Colors.black,fontSize:30),),
               Row(
                 children: [
                Image.asset("asset/sms.png",height: 140,width: 140,),
                                    Checkbox(  
                      checkColor: Colors.greenAccent,  
                      activeColor: Colors.red,  
                      value: this.valuefirst,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.valuefirst = value;  
                        });  
                      },  
                    ),  
                 

               ],),
                 Row(
                   children: [
            Image.asset("asset/email.png",height: 140,width:140,),
                                    Checkbox(  
                      checkColor: Colors.greenAccent,  
                      activeColor: Colors.red,  
                      value: this.valuefirst,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.valuefirst = value;  
                        });  
                      },  
                    ),  
                 

               ],),
           
             ]),

           ),
           SizedBox(height: 100,),
   Padding(
                 padding: const EdgeInsets.symmetric(horizontal:25.0),
                 child: Container(
                   width: Get.width,
                   height: 80,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:
                      [
                    Image.asset("asset/arrowleft.png",height: 60,width: 60,),
                    GestureDetector(
                      onTap: (){
                        Get.to(AddFamily());
                      },
                      child: Image.asset("asset/arrowright.png",height: 60,width: 60,)),
                   ],
                   ),
                 ),
               )
        ],)
      ),
      
    );
  }
}