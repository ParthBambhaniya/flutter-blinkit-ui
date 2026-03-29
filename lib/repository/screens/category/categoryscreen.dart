// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_blinkit_ui/repository/widgets/uihelper.dart';

// class CategoryScreen extends StatelessWidget{
//   TextEditingController searchController=TextEditingController();

//   var grocerylist=[
//     {
//       "img":"grocery1.png",
//       "text":"Vegetables &\n Fruits"
//     },

//     {
//       "img":"grocery2.png",
//       "text":"Atta, Dal &\n Rice"
//     },

//     {
//       "img":"grocery3.png",
//       "text":"Oil, Ghee &\n Masala"
//     },

//     {
//       "img":"grocery4.png",
//       "text":"Dry Fruits &\nCereals"
//     },
    
//     {
//       "img":"grocery5.png",
//       "text":"Biscuits &\nBakery "
//     },
//   ];

//   var grocerylist2=[
//     {
//       "img":"grocery6.png",
//       "text":"Dry Fruits &\nCereals"
//     },

//     {
//       "img":"grocery7.png",
//       "text":"Kitchen &\nAppliances"
//     },

//     {
//       "img":"grocery8.png",
//       "text":"Tea &\nCoffees"
//     },

//     {
//       "img":"grocery9.png",
//       "text":"Ice Creams &\nmuch more"
//     },

//     {
//       "img":"grocery10.png",
//       "text":"Noodles &\nPacket Food"
//     },
//   ];

//     var snackslist=[
//     {
//       "img":"grocery11.png",
//       "text":"Chips &\nNamkeens"
//     },

//     {
//       "img":"grocery12.png",
//       "text":"Sweets &\nChocalates"
//     },

//     {
//       "img":"grocery13.png",
//       "text":"Drinks &\nJuices"
//     },

//     {
//       "img":"grocery14.png",
//       "text":"Sauces &\nSpreads"
//     },

//     {
//       "img":"grocery15.png",
//       "text":"Beauty &\nCosmetics"
//     },
//     ];

//     var householdlist=[
//     {
//       "img":"grocery16.png",
//       "text":""
//     },
    
//     {
//       "img":"grocery17.png",
//       "text":""
//     },
  
//     {
//       "img":"grocery18.png",
//       "text":""
//     },

//     {
//       "img":"grocery19.png",
//       "text":""
//     },

//     {
//       "img":"grocery20.png",
//       "text":""
//     },
//   ];

//   @override
//   Widget build (BuildContext context){
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: 40,),

//           Stack(
//           children: [
//             Container(
//           height: 190,
//           width: double.infinity,
//           color: Color(0XFFF7CB45),
//           child: Column(
//             children: [
//               SizedBox(height: 30,),
//               Row(children: [
//                 SizedBox(width: 20,),
//                 Uihelper.CustomText(text: "Blinkit in", 
//                 color: Color(0XFF000000), 
//                 fontweight: FontWeight.bold, 
//                 fontsize: 14,
//                 fontfamily: "bold"),
//               ],),


//               Row(children: [
//                 SizedBox(width: 20,),
//                 Uihelper.CustomText(text: "16 minutes", 
//                 color: Color(0XFF000000), 
//                 fontweight: FontWeight.bold, 
//                 fontsize: 20,
//                 fontfamily: "bold"),
//               ],),

//               Row(children: [
//                 SizedBox(width: 20,),
//                 Uihelper.CustomText(text: "HOME ", 
//                 color: Color(0XFF000000), 
//                 fontweight: FontWeight.bold, 
//                 fontsize: 14),
//                 Uihelper.CustomText(text: "- Parth , Gandhinagar, Gujarat", 
//                 color: Color(0XFF000000), 
//                 fontweight: FontWeight.bold, 
//                 fontsize: 14,
//                 fontfamily: "bold")
//               ],
//               ),
//             ],
//           ),
//         ),
//         Positioned(
//           right: 4,
//           bottom: 100,
//           child: CircleAvatar(
//             radius: 15,
//             backgroundColor: Colors.white,
//             child: Icon(
//               Icons.person,
//               color: Colors.black,
//               size: 20,
//             ),
//           )
//         ),
//         Positioned(
//           bottom: 30,
//           left: 20,
//           child: Uihelper.CustomTextField(controller: searchController),),
//           ],
//         ),
//         SizedBox(height: 20,),
//         Row(
//           children: [
//             SizedBox(width: 20,),
//             Uihelper.CustomText(
//           text: "Grocery & Kitchen", 
//           color: Color(0XFF000000), 
//           fontweight: FontWeight.bold, 
//           fontsize: 14,
//           fontfamily: "bold"),
//           ],
//         ),

//         //Grocery List 1
//         SizedBox(height: 20,),
//         Expanded(
//           flex: 4,
//           child: Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: ListView.builder(itemBuilder: (context,index){
//               return Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: Container(
//                       height: 78,
//                       width: 71,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Color(0XFFD9EBEB),
//                       ),
//                       child: Uihelper.CustomImage(img: grocerylist[index]["img"].toString()),
//                     ),
//                   ),
//                   Uihelper.CustomText(text: grocerylist[index]["text"].toString(), color: Color(0XFF000000), fontweight: FontWeight.normal, fontsize: 10),
//                 ],
//               );
//             },itemCount: grocerylist.length,scrollDirection: Axis.horizontal,),
//             ),
//         ),

//         //Grocery List 2
//         Expanded(
//           flex: 4,
//           child: Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: ListView.builder(itemBuilder: (context,index){
//               return Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: Container(
//                       height: 78,
//                       width: 71,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Color(0XFFD9EBEB),
//                       ),
//                       child: Uihelper.CustomImage(img: grocerylist2[index]["img"].toString()),
//                     ),
//                   ),
//                   Uihelper.CustomText(text: grocerylist2[index]["text"].toString(), color: Color(0XFF000000), fontweight: FontWeight.normal, fontsize: 10),
//                 ],
//               );
//             },itemCount: grocerylist2.length,scrollDirection: Axis.horizontal,),
//             ),
//         ),

//         //Snacks List
//         Row(children: [
//           SizedBox(width: 20,),
//           Uihelper.CustomText(
//             text: "Snacks & Drinks", 
//             color: Colors.black, 
//             fontweight: FontWeight.bold, 
//             fontsize: 14,
//             fontfamily: "bold"), 
//         ],
//         ),
//         //Snacks List
//         Expanded(
//           flex: 4,
//           child: Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: ListView.builder(itemBuilder: (context,index){
//               return Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: Container(
//                       height: 78,
//                       width: 71,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Color(0XFFD9EBEB),
//                       ),
//                       child: Uihelper.CustomImage(img: snackslist[index]["img"].toString()),
//                     ),
//                   ),
//                   Uihelper.CustomText(text: snackslist[index]["text"].toString(), color: Color(0XFF000000), fontweight: FontWeight.normal, fontsize: 10),
//                 ],
//               );
//             },itemCount: snackslist.length,scrollDirection: Axis.horizontal,),
//             ),
//         ),

//         //Household Essentials
//         Row(children: [
//           SizedBox(width: 20,),
//           Uihelper.CustomText(
//             text: "Snacks & Drinks", 
//             color: Colors.black, 
//             fontweight: FontWeight.bold, 
//             fontsize: 14,
//             fontfamily: "bold"), 
//         ],
//         ),
//         //Household Essentials
//         Expanded(
//   flex: 4,
//   child: Padding(
//     padding: const EdgeInsets.only(left: 20),
//     child: ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: householdlist.length,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.all(4.0),
//           child: Column(
//             children: [
//               Container(
//                 height: 78,
//                 width: 71,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Color(0XFFD9EBEB),
//                 ),
//                 child: Uihelper.CustomImage(
//                   img: householdlist[index]["img"].toString(),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     ),
//   ),
// ),

        

        
        
//         ], 
//       ),    
//     );
//   }
// }



import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_blinkit_ui/repository/widgets/uihelper.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var grocerylist = [
    {"img": "grocery1.png", "text": "Vegetables &\n Fruits"},
    {"img": "grocery2.png", "text": "Atta, Dal &\n Rice"},
    {"img": "grocery3.png", "text": "Oil, Ghee &\n Masala"},
    {"img": "grocery4.png", "text": "Dry Fruits &\nCereals"},
    {"img": "grocery5.png", "text": "Biscuits &\nBakery "},
  ];

  var grocerylist2 = [
    {"img": "grocery6.png", "text": "Dry Fruits &\nCereals"},
    {"img": "grocery7.png", "text": "Kitchen &\nAppliances"},
    {"img": "grocery8.png", "text": "Tea &\nCoffees"},
    {"img": "grocery9.png", "text": "Ice Creams &\nmuch more"},
    {"img": "grocery10.png", "text": "Noodles &\nPacket Food"},
  ];

  var snackslist = [
    {"img": "grocery11.png", "text": "Chips &\nNamkeens"},
    {"img": "grocery12.png", "text": "Sweets &\nChocalates"},
    {"img": "grocery13.png", "text": "Drinks &\nJuices"},
    {"img": "grocery14.png", "text": "Sauces &\nSpreads"},
    {"img": "grocery15.png", "text": "Beauty &\nCosmetics"},
  ];

  var householdlist = [
    {"img": "grocery16.png", "text": "Cleaning"},
    {"img": "grocery17.png", "text": "Personal Care"},
    {"img": "grocery18.png", "text": "Baby Care"},
    {"img": "grocery19.png", "text": "Pet Care"},
    {"img": "grocery20.png", "text": "More"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // ✅ Added SingleChildScrollView
        child: Column(
          children: [
            // Header Section
            SizedBox(height: 40),
            Stack(
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  color: Color(0xFFF7CB45),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Row(children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                            text: "Blinkit in",
                            color: Color(0xFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                            fontfamily: "bold"),
                      ]),
                      Row(children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                            text: "16 minutes",
                            color: Color(0xFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 20,
                            fontfamily: "bold"),
                      ]),
                      Row(children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                            text: "HOME ",
                            color: Color(0xFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14),
                        Uihelper.CustomText(
                            text: "- Parth , Gandhinagar, Gujarat",
                            color: Color(0xFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                            fontfamily: "bold")
                      ]),
                    ],
                  ),
                ),
                Positioned(
                  right: 4,
                  bottom: 100,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black, size: 20),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Uihelper.CustomTextField(controller: searchController),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Grocery & Kitchen Title
            Row(
              children: [
                SizedBox(width: 20),
                Uihelper.CustomText(
                    text: "Grocery & Kitchen",
                    color: Color(0xFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold"),
              ],
            ),

            // ✅ REMOVED Expanded - Using SizedBox with fixed height
            SizedBox(
              height: 120, // Fixed height for horizontal list
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFD9EBEB),
                            ),
                            child: Uihelper.CustomImage(
                                img: grocerylist[index]["img"].toString()),
                          ),
                        ),
                        SizedBox(height: 2),
                        SizedBox(
                          width: 71,
                          child: Uihelper.CustomText(
                            text: grocerylist[index]["text"].toString(),
                            color: Color(0xFF000000),
                            fontweight: FontWeight.normal,
                            fontsize: 10,
                            //**textAlign: TextAlign.center,**
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: grocerylist.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),

            SizedBox(height: 20),
            // Grocery List 2
            Row(
              children: [
                SizedBox(width: 20),
                Uihelper.CustomText(
                    text: "More Grocery",
                    color: Color(0xFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold"),
              ],
            ),
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFD9EBEB),
                            ),
                            child: Uihelper.CustomImage(
                                img: grocerylist2[index]["img"].toString()),
                          ),
                        ),
                        SizedBox(height: 2),
                        SizedBox(
                          width: 71,
                          child: Uihelper.CustomText(
                            text: grocerylist2[index]["text"].toString(),
                            color: Color(0xFF000000),
                            fontweight: FontWeight.normal,
                            fontsize: 10,
                            //**textAlign: TextAlign.center,**
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: grocerylist2.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Snacks Title
            Row(
              children: [
                SizedBox(width: 20),
                Uihelper.CustomText(
                    text: "Snacks & Drinks",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold"),
              ],
            ),
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFD9EBEB),
                            ),
                            child: Uihelper.CustomImage(
                                img: snackslist[index]["img"].toString()),
                          ),
                        ),
                        SizedBox(height: 2),
                        SizedBox(
                          width: 71,
                          child: Uihelper.CustomText(
                            text: snackslist[index]["text"].toString(),
                            color: Color(0xFF000000),
                            fontweight: FontWeight.normal,
                            fontsize: 10,
                            //**textAlign: TextAlign.center,**
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: snackslist.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Household Title
            Row(
              children: [
                SizedBox(width: 20),
                Uihelper.CustomText(
                    text: "Household Essentials",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold"),
              ],
            ),
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: householdlist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFD9EBEB),
                            ),
                            child: Uihelper.CustomImage(
                              img: householdlist[index]["img"].toString(),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20), // Bottom padding
          ],
        ),
      ),
    );
  }
}




// ListView.builder(itemBuilder: (context,index){
//               return Container(
//               height: 100,
//               width: 86,
//               decoration: BoxDecoration(
//                 color: Color(0XFFEAD3D3),
//                 borderRadius: BorderRadius.circular(10)
//               ),
//               child: Column(children: [
//                 Uihelper.CustomText(
//                   text: homedata[index]["text"].toString(), 
//                   color: Color(0XFF000000), 
//                   fontweight: FontWeight.bold, 
//                   fontsize: 10),
//               ],
//               ),
//             );




// Container(
//               height: 100,
//               width: 86,
//               decoration: BoxDecoration(
//                 color: Color(0XFFEAD3D3),
//                 borderRadius: BorderRadius.circular(10)
//               ),
//             )