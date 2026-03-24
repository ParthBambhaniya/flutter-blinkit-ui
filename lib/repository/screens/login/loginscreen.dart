// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Login Screen"),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_blinkit_ui/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Uihelper.CustomImage(img: "BlinkitOnboardingScreen.png"),
          SizedBox(height: 30,
          ),
          Uihelper.CustomImage(img: "image2.png"),
          SizedBox(height: 20,
          ),
          Uihelper.CustomText(text: "India’s last minute app", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 20,fontfamily: "bold")
        ],),
      ),
    );
  }
}