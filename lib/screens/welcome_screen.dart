import 'package:chat_second/components/background_decoration.dart';
import 'package:chat_second/components/custom_button.dart';
import 'package:chat_second/screens/log_in_screen.dart';
import 'package:chat_second/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import '../constans.dart';

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
          Hero(
            tag: 'logo',
           child: Image.asset("assets/images/logo.png",
           height: 150,
           ),
         ),
          SizedBox(height: 12,),

          Text("Welcome to Our Chat App!",
            style: TextStyle(color:kMainColor, fontSize: 30),

          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(
                tag: 'logIn',
                child: CustomButton(title: "Log In",
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LogInScreen()));

                },

                ),
              ),
              Hero(
                tag: 'signUp',                child: CustomButton(title: "Sign Up",
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                  },
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
