import 'package:slandrum/layers/presentationLayer/screens/Rewards.dart';
import 'package:slandrum/layers/presentationLayer/screens/familyScreen.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
   FamilyScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),  
    Reward(),
    Container(
      color: Colors.green,
    )
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