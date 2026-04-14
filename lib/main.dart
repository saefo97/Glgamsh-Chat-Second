import 'package:chat_second/constans.dart';
import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LogInScreen());
  }
}

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.55,
                width: MediaQuery.of(context).size.width * 0.55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 3,
                      blurRadius: 4,
                    ),
                  ],
                  gradient: kDarkGradient,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(360),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.75,
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
                gradient:kLightGradient,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(360),
                ),
              ),
            ),
            Positioned(
              left: 50,
              bottom: 100,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 3,
                      blurRadius: 4,
                    ),
                  ],
                  gradient: kDarkGradient,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              right: 60,
              bottom: 240,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 3,
                      blurRadius: 4,
                    ),
                  ],
                  gradient: kLightGradient,

                  shape: BoxShape.circle,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Log In",
                      style: TextStyle(color:kMainColor, fontSize: 34),
                    ),
                    SizedBox(height: 16.0),
                    CustomTextFormField(label: "Email",),
                    SizedBox(height: 8.0),
                    CustomTextFormField(label: "Password",),
                    SizedBox(height: 8.0),
                    GestureDetector(

                      onTap: (){
                        print("Hello");
              },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text("Log In"),
                      ),
                    ),
                  Container(
                    decoration: BoxDecoration(gradient: kLightGradient,
                    
                    borderRadius: BorderRadius.circular(30)
                    ),
                    child: MaterialButton(
                      height: 64,
                      minWidth: 200,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      onPressed: (){},
                      child: Text("Log In", style:  TextStyle(color: Colors.white,
                      fontSize: 28.0),),
                    ),
                  ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
