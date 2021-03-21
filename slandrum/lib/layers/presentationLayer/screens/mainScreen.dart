import 'package:slandrum/layers/presentationLayer/constants/my_decoration.dart';
import 'package:slandrum/layers/presentationLayer/constants/my_textstyle.dart';
import 'package:slandrum/layers/presentationLayer/screens/homescreen.dart';
import 'package:slandrum/layers/presentationLayer/screens/loginScreen.dart';
import 'package:slandrum/layers/presentationLayer/screens/registerScreen.dart';
import 'package:slandrum/layers/presentationLayer/widgets/mybutton.dart';
import 'package:slandrum/layers/presentationLayer/widgets/mypasswordtextfield.dart';
import 'package:slandrum/layers/presentationLayer/widgets/mytextfield.dart';
import 'package:slandrum/layers/presentationLayer/widgets/toptitle.dart';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:slandrum/layers/presentationLayer/screens/homeScreen.dart';
class LoginScreen extends StatefulWidget {
  static double widthStep, heightStep;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  static String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = new RegExp(p);
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  void validation() async {
    if (email.text.isEmpty && password.text.isEmpty) {
      // FirebaseAuth.instance.signOut();
      scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text("Both fields Are Empty"),
        ),
      );
    } else if (email.text.isEmpty) {
      scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text("Email Is Empty"),
        ),
      );
    } else if (!regExp.hasMatch(email.text)) {
      scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text("Please Try Valid Email"),
        ),
      );
    } else if (password.text.isEmpty) {
      scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text("Password Is Empty"),
        ),
      );
    } else if (password.text.length < 8) {
      scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text("Password  Is Too Short"),
        ),
      );
    }
    //  else {
    //   submit(context);
    // }
  }

  Widget _buildAllTextField() {
    return Container(
      height: LoginScreen.heightStep * 450,
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

  Widget _buildBottomText(BuildContext context) {
    return Container(
      height: LoginScreen.heightStep * 80,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed("/forgot"),
            child: Text(
              "Forgot Password?",
              style: myTextStyle,
            ),
          ),
          FlatButton(
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed("/register"),
            child: Text(
              "Register",
              style: myTextStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSingleConnectWith({String image, Function onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        maxRadius: LoginScreen.heightStep * 28,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(
          "images/$image.png",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    LoginScreen.widthStep = MediaQuery.of(context).size.width / 1000;
    LoginScreen.heightStep = MediaQuery.of(context).size.height / 1000;
    getFontSize(getTextFontSize: LoginScreen.widthStep * 50);
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: LoginScreen.widthStep * 10),
            height: double.infinity,
            width: double.infinity,
            decoration: myDecoration,
            child: SingleChildScrollView(
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                   Padding(
                     padding: const EdgeInsets.only(top:30,left: 30,right: 30,),
                     child: 
                     Text("Welcome To this",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                   ),
                   Text("Application",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
               Image.asset("asset/qwerty1.png",),
         
                  MyButton(
                    containerHeight: LoginScreen.heightStep * 65,
                    buttonName: "Sign In",
                    textFontSize: LoginScreen.widthStep * 45,
                    onPressed: () =>
                    //  validation(),
                    Get.to( LogIn(),)
                  ),
                  SizedBox(height:10),
                   MyButton(
                    containerHeight: LoginScreen.heightStep * 65,
                    buttonName: "SignUP",
                    textFontSize: LoginScreen.widthStep * 45,
                    onPressed: () =>
                    //  validation(),
                    Get.to( RegisterScreen(),)
                  ),
                  _buildBottomText(context),
          
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
