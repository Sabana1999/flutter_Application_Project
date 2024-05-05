

import 'package:flutter/material.dart';
import 'package:flutter_application_2/category.dart';
import 'package:flutter_application_2/chat.dart';
import 'package:flutter_application_2/details.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
   int _selectIndex = 0;
  final List<Widget> _pages = [

    HomePage(),
  Category (),

Details(),

 Chat(), 
 Profile()



  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         fixedColor:Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment,
              ),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_outlined,
              ),
              label: 'Help'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: 'User Account'),
         BottomNavigationBarItem(
             icon: Icon(
               Icons.account_box_rounded,
             ),
             label: 'Account')
        ],
        currentIndex: _selectIndex,
        onTap: (value) {
          _selectIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
