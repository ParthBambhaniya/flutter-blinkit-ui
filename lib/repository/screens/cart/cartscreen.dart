import 'package:flutter/material.dart';
import 'package:flutter_blinkit_ui/repository/widgets/uihelper.dart';

class CartScreen extends StatelessWidget{
  //const CartScreen({super.key});
  TextEditingController searchController=TextEditingController();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 40,),
        Stack(
          children: [
            Container(
          height: 190,
          width: double.infinity,
          color: Color(0XFFF7CB45),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Row(children: [
                SizedBox(width: 20,),
                Uihelper.CustomText(text: "Blinkit in", 
                color: Color(0XFF000000), 
                fontweight: FontWeight.bold, 
                fontsize: 14,
                fontfamily: "bold"),
              ],),


              Row(children: [
                SizedBox(width: 20,),
                Uihelper.CustomText(text: "16 minutes", 
                color: Color(0XFF000000), 
                fontweight: FontWeight.bold, 
                fontsize: 20,
                fontfamily: "bold"),
              ],),

              Row(children: [
                SizedBox(width: 20,),
                Uihelper.CustomText(text: "HOME ", 
                color: Color(0XFF000000), 
                fontweight: FontWeight.bold, 
                fontsize: 14),
                Uihelper.CustomText(text: "- Parth , Gandhinagar, Gujarat", 
                color: Color(0XFF000000), 
                fontweight: FontWeight.bold, 
                fontsize: 14,
                fontfamily: "bold")
              ],
              ),
              // SizedBox(height: 20,),
              // Uihelper.CustomTextField(controller: searchController),
            ],
          ),
        ),
        Positioned(
          right: 20,
          bottom: 100,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Colors.black,
              size: 20,
            ),
          )
        ),
        Positioned(
          bottom: 30,
          left: 20,
          child: Uihelper.CustomTextField(controller: searchController),)
          ],
        ),
      ],
      ),);
  }
}