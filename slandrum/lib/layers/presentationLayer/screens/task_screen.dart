import 'package:get/get.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
       bool valuefirst = false;  
  bool valuesecond = false; 
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
                    
                    children: [
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
    padding: const EdgeInsets.symmetric(horizontal:8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("TODOs",style: TextStyle(fontSize:25,fontWeight:FontWeight.bold),),
        Text("3",style: TextStyle(fontSize:25,fontWeight:FontWeight.bold))
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
   Container(
     height: 300,
     width: Get.width,
     child: ListView.builder(
       scrollDirection: Axis.vertical,
       itemCount: 4,
       itemBuilder: (context,i){
     return  Padding(
       padding: const EdgeInsets.symmetric(horizontal:15.0),
       child: Padding(
         padding: const EdgeInsets.symmetric(vertical:8.0),
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   children: [
                     Container(
                       height: 40,
                       width: 8,
                       color: Colors.red,
                       
                     ),
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
                          Text("BarkatQatt/Pioneer",style: TextStyle(fontSize:28,fontWeight:FontWeight.bold),),
                   ],
                 ),
                     

                          Column(children: [
                            Image.asset("asset/coin.png",height: 25,width: 25,),
                            Text("ioneer",style: TextStyle(fontSize:11,fontWeight:FontWeight.bold),)
                          ],)
               ],
             ),
             Divider(height: 3,color: Colors.white,thickness: 8,),
           ],
           
         ),
       ),
     );
     }),
   )

          ],),
          
        ),
      ),
        
    );
  }
}