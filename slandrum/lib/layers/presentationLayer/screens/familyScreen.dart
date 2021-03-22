import 'package:get/get.dart';
import 'package:slandrum/layers/presentationLayer/widgets/PointBank.dart';
import 'package:slandrum/layers/presentationLayer/widgets/pointBankTotal.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';


class FamilyScreen extends StatefulWidget {
  @override
  _FamilyScreenState createState() => _FamilyScreenState();
}

class _FamilyScreenState extends State<FamilyScreen>  with SingleTickerProviderStateMixin{
   TabController _tabController;
   @override
  void initState() {
    super.initState();
    // friendController.getallData();
    

    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    
      body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:12.0),
                child: Container(
          height:Get.height,
          width: Get.width,
child: Column(
  children:[
  Container(
    height: Get.height/2 -200,
    width: Get.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Row(children:[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
          Image.asset("asset/settings.png",height: 40,width: 40,),
          Text("Settings"),

        ]),
        SizedBox(width: 17,),
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
          Image.asset("asset/message.png",height: 40,width: 40,),
          Text("Message"),

        ]),
        
      ]),
       Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
          Image.asset("asset/conversation.png",height: 40,width: 40,),
          Text("Message"),

        ]),
    ],),
  ),
    TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              labelStyle: TextStyle(fontSize:30),
              tabs: [
                Tab(
                  text: '1st tab',
                ),
                Tab(
                  text: '2 nd tab',
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
   Container(
     height: 370,
     color: Colors.red,
     width: Get.width,
     child: TabBarView(controller: _tabController, children: [
     
       pointBank(),

       pointBankTotal(),
      
     ]),
   ),
]),
        ),
              ),
      ),
     
    );
  }
}