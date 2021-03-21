import 'package:get/get.dart';
import 'package:slandrum/layers/presentationLayer/constants/colors.dart';
import 'package:slandrum/layers/presentationLayer/screens/mainScreen.dart';
import 'package:slandrum/layers/presentationLayer/screens/profilecreation.dart';
import 'package:slandrum/layers/presentationLayer/widgets/mybutton.dart';
import 'package:slandrum/layers/presentationLayer/widgets/mypasswordtextfield.dart';
import 'package:slandrum/layers/presentationLayer/widgets/mytextfield.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';


class CreateHome extends StatefulWidget {
  @override
  _CreateHomeState createState() => _CreateHomeState();
}

class _CreateHomeState extends State<CreateHome> {

    final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
   final TextEditingController name = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
   
     Widget _buildAllTextField() {
    return 
    Container(
      height: 200,
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyTextField(
              iconData: Icons.email,
              textName: "Family Name",
              controller: name,
            ),
             MyTextField(
              iconData: Icons.email,
              textName: "Email",
              controller: email,
            ),
            MyPasswordTextField(
              name: "Password",
              controller: password,
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
      backgroundColor: Color(0xFF9EDCF1),
      appBar: AppBar(
        title: Text("Create Home",style: TextStyle(color: whiteColor),),
        centerTitle: true,
        backgroundColor:Color(0xFFF4B9C7), 
        

      ),
      body: SingleChildScrollView(
              child: Container(
          height: Get.height,
          width: Get.width,
          child: Column(children:[
              Image.asset("asset/qwerty1.png",height:250,width: 250,),
              _buildAllTextField(),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  
                Container(
                  color: Colors.white,
                  height: 50,
                  width: 140,
                  child: Center(child: Text("Previous",style: TextStyle(fontSize:24,fontWeight:FontWeight.bold),)),),
                    GestureDetector(
                      onTap: (){
                        Get.to(ProfileCreation());
                      },
                                          child: Container(
                  color: Colors.white,
                  height: 50,
                  width: 140,
                  child: Center(child: Text("Next",style: TextStyle(fontSize:24,fontWeight:FontWeight.bold),)),),
                    ),

              ]),
              
                
          ]),
        ),
      ),
      
    );
  }
}