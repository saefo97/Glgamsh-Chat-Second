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
          // TODO: وضع صورة
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
