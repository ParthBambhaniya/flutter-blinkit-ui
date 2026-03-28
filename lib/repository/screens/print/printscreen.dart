import 'package:flutter/material.dart';
import 'package:flutter_blinkit_ui/repository/widgets/uihelper.dart';

class PrintScreen extends StatelessWidget{

  TextEditingController searchController=TextEditingController();
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
      body: Column(
        children: [
          SizedBox(height: 40,),
          //child:
            Stack(
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  color: Color(0XFFF7CB45),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Row(children: [
                        SizedBox(width: 20,),
                        Uihelper.CustomText(
                          text: "Blinkit in", 
                          color: Color(0XFF000000), 
                          fontweight: FontWeight.bold, 
                          fontsize: 14,
                          fontfamily: "bold"),
                      ],),

                      Row(children: [
                        SizedBox(width: 20,),
                        Uihelper.CustomText(
                          text: "16 minutes", 
                          color: Color(0XFF000000), 
                          fontweight: FontWeight.bold, 
                          fontsize: 20,
                          fontfamily: "bold"),
                      ],),

                      Row(children: [
                        SizedBox(width: 20,),
                        Uihelper.CustomText(
                          text: "HOME ", 
                          color: Color(0XFF000000), 
                          fontweight: FontWeight.bold, 
                          fontsize: 14),

                          Uihelper.CustomText(
                            text: "- Parth , Gandhinagar, Gujarat", 
                            color: Color(0XFF000000), 
                            fontweight: FontWeight.bold, 
                            fontsize: 14,
                            fontfamily: "bold")
                      ],)
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
                  child: Uihelper.CustomTextField(controller: searchController,),
                  )
              ],
            ),

            SizedBox(height: 30,),
            Uihelper.CustomText(
              text: "Print Store", 
              color: Color(0XFF000000), 
              fontweight: FontWeight.bold, 
              fontsize: 32),

            Uihelper.CustomText(
              text: "Blinkit ensures secure prints at every stage", 
              color: Color(0XFF9C9C9C), 
              fontweight: FontWeight.bold, 
              fontsize: 14),
            
            SizedBox(height: 40,),
            Stack(
              children: [
                Container(
              height: 170,
              width: 361,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),

              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(children: [
                      SizedBox(width: 20,),
                      Uihelper.CustomText(
                      text: "Documents", 
                      color: Color(0XFF000000), 
                      fontweight: FontWeight.bold, 
                      fontsize: 14,)
                      ],),

                  //Price starting at rs 3/page 
                  Row(children: [
                      SizedBox(width: 20,),
                      Uihelper.CustomImage(img: "print_icon.png"),
                      SizedBox(width: 7,),
                      Uihelper.CustomText(
                        text: "Price starting at rs 3/page", 
                        color: Color(0XFF9C9C9C), 
                        fontweight: FontWeight.normal, 
                        fontsize: 14)
              ],),

                  //Paper quality: 70 GSM
                  Row(children: [
                    SizedBox(width: 20,),
                    Uihelper.CustomImage(img: "print_icon.png"),
                    SizedBox(width: 7,),
                    Uihelper.CustomText(
                      text: "Paper quality: 70 GSM", 
                      color: Color(0XFF9C9C9C), 
                      fontweight: FontWeight.normal, 
                      fontsize: 14)
                  ],),


                  //Single side prints
                  Row(children: [
                    SizedBox(width: 20,),
                    Uihelper.CustomImage(img: "print_icon.png"),
                    SizedBox(width: 7,),
                    Uihelper.CustomText(
                      text: "Single side prints", 
                      color: Color(0XFF9C9C9C), 
                      fontweight: FontWeight.normal, 
                      fontsize: 14)
                  ],
                ),

                SizedBox(height: 10,),
                Row(children: [
                  SizedBox(width: 20,),
                  Container(
                    height: 40,
                    width: 125,
                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF27AF34),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))), 
                    child: Text("Upload Files",style: TextStyle(fontSize: 13,color: Colors.white),)),
                    )
                ],)

            ],),
            ),

            Positioned(
              child: Uihelper.CustomImage(img: "Documents.png"), 
              right: 20,
              bottom: 40,)
              ],
              ),
        ],
      ));
  }
}




 