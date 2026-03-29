import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blinkit_ui/repository/widgets/uihelper.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget{
  TextEditingController searchController=TextEditingController();

  var homedata=[
    {
      "img":"home1.png",
      "text":"Lights, Diyas \n& Candles"
    },

    {
      "img":"home2.png",
      "text":"Diwali \n Gifts"
    },

    {
      "img":"home3.png",
      "text":"Appliances \n& Gadgets"
    },

    {
      "img":"home4.png",
      "text":"Home \n& Living"
    },
  ];


  var category=[
    {
      "img":"home5.png",
      "text":"Golden Glass \n Wooden Lid Candle (Oudh)"
    },

    {
      "img":"home6.png",
      "text":"Royal Gulab Jamun \n By Bikano"
    },

    {
      "img":"home7.png",
      "text":"Bikaji Bhujia \n Bhujia"
    },
  ];

  HomeScreen({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
        
        Stack(
          children: [
            Container(
          height: 190,  
          width: double.infinity,
          color: Color(0XFFEC0505),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(children: [
                SizedBox(width: 20,),
                Uihelper.CustomText(text: "Blinkit in", 
                color: Colors.white, 
                fontweight: FontWeight.bold, 
                fontsize: 14,
                fontfamily: "bold"),
              ],),


              Row(children: [
                SizedBox(width: 20,),
                Uihelper.CustomText(text: "16 minutes", 
                color: Colors.white, 
                fontweight: FontWeight.bold, 
                fontsize: 20,
                fontfamily: "bold"),
              ],),

              Row(children: [
                SizedBox(width: 20,),
                Uihelper.CustomText(text: "HOME ", 
                color: Colors.white, 
                fontweight: FontWeight.bold, 
                fontsize: 14),
                Uihelper.CustomText(text: "- Parth , Gandhinagar, Gujarat", 
                color: Colors.white, 
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
            backgroundColor: Colors.black,
            child: Icon(
              Icons.person,
              color: Colors.white,
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

        //Divider(),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.white,
        ),
        
        Container(
          height: 196,
          width: double.infinity,
          color: Color(0XFFEC0505),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Uihelper.CustomImage(img: "Cracker1.png"),
              Uihelper.CustomImage(img: "Cracker2.png"),
              Uihelper.CustomText(
              text: "Mega Diwali Sale", 
              color: Color(0XFFFFFFFF), 
              fontweight: FontWeight.bold, 
              fontsize: 20,
              fontfamily: "bold"),
              Uihelper.CustomImage(img: "Cracker2.png"),
              Uihelper.CustomImage(img: "Cracker1.png"),
            ],
            ),

            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(5.0),
              child: ListView.builder(itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(left: 5,right: 5,top: 1,bottom: 1),
                child: Container(
              height: 108,
              width: 86,
              decoration: BoxDecoration(
                color: Color(0XFFEAD3D3),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(children: [
                Uihelper.CustomText(
                  text: homedata[index]["text"].toString(), 
                  color: Color(0XFF000000), 
                  fontweight: FontWeight.bold, 
                  fontsize: 10,
                ),

                Uihelper.CustomImage(img: homedata[index]["img"].toString())
              ],),
            ),
            );
            },itemCount: homedata.length,scrollDirection: Axis.horizontal,
            ),
              )
            )
            ],
          ),
        ),

        SizedBox(height: 20,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(itemBuilder: (context,index){
              return Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: 108,
                    width: 93,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Uihelper.CustomImage(img: category[index]["img"].toString()),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Uihelper.CustomText(
                    text: category[index]["text"].toString(), 
                    color: Color(0XFF000000), 
                    fontweight: FontWeight.bold, 
                    fontsize: 8,),
                  ),

                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Row(children: [ 
                    Uihelper.CustomImage(img: "time.png"),
                    Uihelper.CustomText(
                      text: "16 MINS", 
                      color: Color(0XFF9C9C9C), 
                      fontweight: FontWeight.normal, 
                      fontsize: 10)
                  ],)
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Row(children: [ 
                    Uihelper.CustomImage(img: "Ruby_icon.png"),
                    Uihelper.CustomText(
                      text: "79", 
                      color: Color(0XFFF000000), 
                      fontweight: FontWeight.bold, 
                      fontsize: 15)
                  ],)
                  ),
    

              ],);
            },itemCount: category.length,scrollDirection: Axis.horizontal,),
            ),
        ),
        ],
      )
    );
  }
}