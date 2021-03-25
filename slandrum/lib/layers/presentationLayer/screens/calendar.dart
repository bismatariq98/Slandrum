import 'package:get/get.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';
class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _controller;  
  
@override  
void initState() {  
  super.initState();  
  _controller = CalendarController();  
}  
       bool valuefirst = false;  
  bool valuesecond = false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFE4EBEB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:12.0),
          child: Container(
          height: Get.height,
          width: Get.width,
          child: SingleChildScrollView(
                      child: Column(children: [
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

        TableCalendar(  
                initialCalendarFormat: CalendarFormat.month,  
                calendarStyle: CalendarStyle(  
                    todayColor: Colors.blue,  
                    selectedColor: Theme.of(context).primaryColor,  
                    todayStyle: TextStyle(  
                        fontWeight: FontWeight.bold,  
                        fontSize: 22.0,  
                        color: Colors.white)  
                ),  
                headerStyle: HeaderStyle(  
                  centerHeaderTitle: true,  
                  formatButtonDecoration: BoxDecoration(  
                    color: Colors.brown,  
                    borderRadius: BorderRadius.circular(22.0),  
                  ),  
                  formatButtonTextStyle: TextStyle(color: Colors.white),  
                  formatButtonShowsNext: false,  
                ),  
                startingDayOfWeek: StartingDayOfWeek.monday,  
                // onDaySelected: (date, events) {  
                //   print(date.toUtc());  
                // },  
                builders: CalendarBuilders(  
                  selectedDayBuilder: (context, date, events) => Container(  
                      margin: const EdgeInsets.all(5.0),  
                      alignment: Alignment.center,  
                      decoration: BoxDecoration(  
                          color: Theme.of(context).primaryColor,  
                          borderRadius: BorderRadius.circular(8.0)),  
                      child: Text(  
                        date.day.toString(),  
                        style: TextStyle(color: Colors.white),  
                      )),  
                  todayDayBuilder: (context, date, events) => Container(  
                      margin: const EdgeInsets.all(5.0),  
                      alignment: Alignment.center,  
                      decoration: BoxDecoration(  
                          color: Colors.blue,  
                          borderRadius: BorderRadius.circular(8.0)),  
                      child: Text(  
                        date.day.toString(),  
                        style: TextStyle(color: Colors.white),  
                      )),  
                ),  
                calendarController: _controller,  
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
    height: 100,width: Get.width,decoration: BoxDecoration(
     border: Border.all(width:2,color:Colors.white),
  ),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      color: Colors.white,
      height:Get.height,
      width:Get.width,
      child:Row(
        
        children: [
            Image.asset("asset/piiic.png",height: 80,width: 80,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
Text("Heading Towards",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
Text("10/09/09",style: TextStyle(fontSize:18,fontWeight:FontWeight.bold),),

            ],),
            SizedBox(width:35),
 Column(
   mainAxisAlignment: MainAxisAlignment.center,
   children: [
     Image.asset("asset/coin.png",height: 30,width: 30,),
     Text("10/",style: TextStyle(fontSize:18,fontWeight:FontWeight.bold),),
   ],
 ),
SizedBox(width:30),
   Column(
     mainAxisAlignment: MainAxisAlignment.center,

     children: [

       Container(
         height: 35,
         width: 35,
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
                           Text("10/",style: TextStyle(fontSize:18,fontWeight:FontWeight.bold),),
                          
     ],
   ),  


      ],)
    ),
  ),
  )
            ],),
          ),
      ),
        )),
      
    );
  }
}