import 'package:get/get.dart';
import 'package:slandrum/layers/backendLayer/Model.dart';
import 'package:slandrum/layers/presentationLayer/constants/my_textstyle.dart';
import 'package:slandrum/layers/presentationLayer/screens/addContact.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';

class TaskCategories extends StatefulWidget {
  @override
  _TaskCategoriesState createState() => _TaskCategoriesState();
}

class _TaskCategoriesState extends State<TaskCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("hello"),
        elevation: 0.0,
      backgroundColor: Color(0xFFECACAD),
      ),
      backgroundColor: Color(0xFFECACAD),
      body: Container(
        color:Color(0xFFECACAD),
        child: SingleChildScrollView(
                  child: Column(
          
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Center(child: Text("Choose Task Categories",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
               Center(child: Text("You can Edit these categories or ",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
               Center(child: Text("Add Them",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
               SizedBox(height:20),
               Container(
                 height: Get.height/2 +80,
                 width: Get.width,
                 
                 child: GridView.builder(
                   itemCount: TaskList.length,
                   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,crossAxisSpacing: 3.0,mainAxisSpacing: 10), itemBuilder: (context,i){
                      return Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                       borderRadius: BorderRadius.circular(80),
                       border: Border.all(width:0.1)
                          
                      ),
                      child: Column(children:[
                        Image.asset(TaskList[i].image,height: 100,),
                        Text(TaskList[i].categoryName)
                      ]),
                      );
                 }),
               ),
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
                        Get.to(AddContact());
                      },
                      child: Image.asset("asset/arrowright.png",height: 60,width: 60,)),
                   ],
                   ),
                 ),
               )
            ]
          ),
        ),
      ),
      
    );
  }
}