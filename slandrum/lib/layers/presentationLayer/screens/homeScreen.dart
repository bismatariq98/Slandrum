import 'package:slandrum/layers/presentationLayer/screens/Rewards.dart';
import 'package:slandrum/layers/presentationLayer/screens/calendar.dart';
import 'package:slandrum/layers/presentationLayer/screens/familyScreen.dart';
import 'package:slandrum/layers/presentationLayer/screens/task_screen.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {



  int _currentIndex = 0;
  final List<Widget> _children = [
   FamilyScreen(),
   Calendar(),
  TaskScreen(),  
    Reward(),
  Lottie.network(
                'https://assets2.lottiefiles.com/packages/lf20_zm15fbrh.json',
                repeat: false
           ),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Image.asset("asset/family.png",height: 60,width:60),
          label: "Family",
          
          
          ),
         new BottomNavigationBarItem(
            icon: Image.asset("asset/Calendar.png",height: 60,width:60),
          label: "Calendar",
         
          ),
         new BottomNavigationBarItem(
            icon: Image.asset("asset/task.png",height: 60,width:60),
          label: "Task",

          ),
            new BottomNavigationBarItem(
            icon: Image.asset("asset/task.png",height: 60,width:60),
          label: "Reward",
          ),
            new BottomNavigationBarItem(
            icon: Image.asset("asset/back.png",height: 60,width:60),
          label: "Back",
          ),
        ],
      ),
      
    );
  }
}