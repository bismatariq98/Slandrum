import 'package:slandrum/layers/presentationLayer/constants/colors.dart';
import 'package:slandrum/layers/presentationLayer/screens/mainScreen.dart';
import 'package:slandrum/layers/presentationLayer/screens/malefemale.dart';
import 'package:slandrum/layers/presentationLayer/widgets/mybutton.dart';
import 'package:slandrum/layers/presentationLayer/widgets/mypasswordtextfield.dart';
import 'package:slandrum/layers/presentationLayer/widgets/mytextfield.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}


class _LogInState extends State<LogIn> {
     final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
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
        title: Text("Login",style: TextStyle(color: whiteColor),),
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
                MyButton(
                    containerHeight: Get.height/2 -300,
                    buttonName: "Sign In",
                    textFontSize: 20,
                    onPressed: () =>
                    //  validation(),
                    Get.to( MaleFemale(),)
                  ),

          ]),
        ),
      ),
      
    );
  }
}