import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

 TextStyle headingStyle = TextStyle(
   color: Colors.black,
   fontSize: 30,
   fontWeight: FontWeight.bold,

 );



double textFontSize;
void getFontSize({double getTextFontSize}) {
  textFontSize = getTextFontSize;
}

TextStyle myTextStyle = TextStyle(
  fontSize: textFontSize,
  color: Colors.white,
  fontWeight: FontWeight.w600,
);

 TextStyle styli= TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold);
 TextStyle stylis= TextStyle(color: Colors.green,fontSize: 24,fontWeight: FontWeight.bold);
 