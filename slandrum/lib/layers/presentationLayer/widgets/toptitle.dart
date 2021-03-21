
import 'package:flutter/material.dart';
import 'package:slandrum/layers/presentationLayer/constants/media_query.dart';

class TopTitle extends StatelessWidget {
  final bool onlyTopText;
  final double heightStep, widthStep;
  final String screenName;
  TopTitle({
    this.onlyTopText,
    this.heightStep,
    this.widthStep,
    this.screenName,
  });
  @override
  Widget build(BuildContext context) {
    MediaQuerys().init(context);

    return Container(
      height: MediaQuerys.heightStep * 380,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuerys.heightStep * 780,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text("Welcome To this Application",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
               Image.asset("asset/qwerty1.png")
                // onlyTopText == false
                //     ? Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text(
                //             screenName,
                //             style: myTextStyle,
                //           ),
                //           SizedBox(
                //             width: MediaQuerys.widthStep * 20,
                //           ),
                //           Text(
                //             "Now",
                //             style: TextStyle(
                //               fontSize: MediaQuerys.widthStep * 45,
                //               color: Colors.grey,
                //               fontWeight: FontWeight.w600,
                //             ),
                //           ),
                //         ],
                //       )
                //     : Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
