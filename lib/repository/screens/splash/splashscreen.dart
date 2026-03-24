import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_blinkit_ui/domain/constants/appcolors.dart';
import 'package:flutter_blinkit_ui/repository/screens/login/loginscreen.dart';
import 'package:flutter_blinkit_ui/repository/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState(); 
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Appcolors.scaffoldbackground,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Uihelper.CustomImage(img: "image1.png"),
        ],),
      ),
    );
  }
}