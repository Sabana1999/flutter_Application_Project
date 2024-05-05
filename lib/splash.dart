// ignore_for_file: use_build_context_synchronously, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/home1.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    checkUserLoggedIn(); 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        
        child: Container(
          decoration: BoxDecoration(image:DecorationImage(image: AssetImage('asset/splash.jpg',
),fit: BoxFit.cover) ),
         // child: Image.asset(
           // 'asset/image/sp1.png',
           // fit: BoxFit.cover,
        
            // height: 1500,
        
            // width: 500,
         // ),
        ),
      ),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => Homepage()));
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    final _userLoggedIn = _sharedPrefs.getBool(SAVEKEY);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx1) => BottomNav()), // Navigate to BottomNav
      );
    }
  }
}


