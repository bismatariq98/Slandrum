import 'package:get/get.dart';
import 'package:slandrum/layers/presentationLayer/constants/my_textstyle.dart';
import 'package:slandrum/layers/presentationLayer/screens/homeScreen.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';

class AddFamily extends StatefulWidget {
  @override
  _AddFamilyState createState() => _AddFamilyState();
}

class _AddFamilyState extends State<AddFamily> {
    bool valuefirst = false;  
  bool valuesecond = false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0.0,),
      body: Container(
        child: SingleChildScrollView(
                  child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Center(child: Text("Please add another family ",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                      Center(child: Text(" Member",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),


                    SizedBox(height: Get.height/17,),
 Center(child: Text("The following family member are already there",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                
                decoration: BoxDecoration(

image: DecorationImage(image: AssetImage("asset/camera.png"),fit: BoxFit.cover)
                ),
        height: 80,
        width: 80,
              ),

              Text("Father",style: TextStyle(fontSize: 30),),
              
                       Transform.scale(
                         scale: 1.9,
                                                  child: Checkbox(
                             
                    checkColor: Colors.greenAccent,  
                    activeColor: Colors.red,  
                    value: this.valuefirst,  
                    onChanged: (bool value) {  
                      setState(() {  
                          this.valuefirst = value;  
                      });  
                    },  
                  ),
                       ),


          ],),
      ),
       Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                
                decoration: BoxDecoration(

image: DecorationImage(image: AssetImage("asset/camera.png"),fit: BoxFit.cover)
                ),
        height: 80,
        width: 80,
              ),

              Text("Mother",style: TextStyle(fontSize: 30),),
              
                       Transform.scale(
                         scale: 1.9,
                                                  child: Checkbox(
                             
                    checkColor: Colors.greenAccent,  
                    activeColor: Colors.red,  
                    value: this.valuefirst,  
                    onChanged: (bool value) {  
                      setState(() {  
                          this.valuefirst = value;  
                      });  
                    },  
                  ),
                       ),


          ],),
      ),
       Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                
                decoration: BoxDecoration(

image: DecorationImage(image: AssetImage("asset/camera.png"),fit: BoxFit.cover)
                ),
        height: 80,
        width: 80,
              ),

              Text("Father",style: TextStyle(fontSize: 30),),
              
                       Transform.scale(
                         scale: 1.9,
                                                  child: Checkbox(
                             
                    checkColor: Colors.greenAccent,  
                    activeColor: Colors.red,  
                    value: this.valuefirst,  
                    onChanged: (bool value) {  
                      setState(() {  
                          this.valuefirst = value;  
                      });  
                    },  
                  ),
                       ),


          ],),
      ),
      IconButton(icon: Icon(Icons.add),onPressed: (){},),
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
                        Get.to(HomeScreen());
                      },
                      child: Image.asset("asset/arrowright.png",height: 60,width: 60,)),
                   ],
                   ),
                 ),
               )
                  ] ,


                  
          ),
        ),
      ),
      
    );
  }
}