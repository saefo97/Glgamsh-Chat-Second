import 'package:chat_second/background_decoration.dart';
import 'package:chat_second/custom_button.dart';
import 'package:flutter/material.dart';

import 'constans.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundDecoration(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // CircleAvatar(
          //   radius: 65,
          //   backgroundColor: Colors.green,
          //   child: CircleAvatar(
          //     radius: 60,
          //     backgroundImage: NetworkImage("https://kitchen.sayidaty.net/uploads/small/f4/f4dd06616700c8a35cda336664339134_w750_h500.jpg"),
          //   ),
          // ),
      //    Image.network("https://kitchen.sayidaty.net/uploads/small/f4/f4dd06616700c8a35cda336664339134_w750_h500.jpg"),
         Image.asset("assets/images/logo.png",
         height: 150,
         ),
          SizedBox(height: 12,),

          Text("Welcome to Our Chat App!",
            style: TextStyle(color:kMainColor, fontSize: 30),

          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(title: "Log In"),
              CustomButton(title: "Sign Up"),
            ],
          )
        ],
      )),
    );
  }
}
