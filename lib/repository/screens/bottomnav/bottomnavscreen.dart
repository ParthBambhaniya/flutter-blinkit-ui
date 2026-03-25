 import 'package:flutter/material.dart';
import 'package:flutter_blinkit_ui/repository/screens/cart/cartscreen.dart';
import 'package:flutter_blinkit_ui/repository/screens/category/categoryscreen.dart';
import 'package:flutter_blinkit_ui/repository/screens/home/homescreen.dart';
import 'package:flutter_blinkit_ui/repository/screens/print/printscreen.dart';
import 'package:flutter_blinkit_ui/repository/widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex=0;
  List<Widget>pages=[
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ) ,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Uihelper.CustomImage(img: "home_icon.png",),label: "Home"),
        BottomNavigationBarItem(
          icon: Uihelper.CustomImage(img: "shopping-bag-icon.png",),label: "Cart"),
        BottomNavigationBarItem(
          icon: Uihelper.CustomImage(img: "category-icon.png",),label: "Category"),
        BottomNavigationBarItem(
          icon: Uihelper.CustomImage(img: "printer-icon.png",),label: "Print ")
      ],type: BottomNavigationBarType.fixed,currentIndex:  currentIndex,onTap: (index){
        setState(() {
          currentIndex=index;
        });
      },),
    );
  }
}