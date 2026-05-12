import 'package:chat_second/screens/forget_password_screen.dart';
import 'package:flutter/material.dart';
import '../components/background_decoration.dart';
import '../components/custom_text_form_field.dart';
import '../constans.dart';
import '../components/custom_button.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundDecoration(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Hero(
                    tag: 'logo',                    child: Image.asset("assets/images/logo.png",
                      height: 75,
                    ),
                  ),
                  Text(
                    "Log In",
                    style: TextStyle(color:kMainColor, fontSize: 34),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              CustomTextFormField(label: "Email",),
              SizedBox(height: 8.0),
              CustomTextFormField(label: "Password",),
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: TextButton(onPressed: (){
                  
                  
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordScreen()));
                }, child: Text("Forget Password?" ,

                style: TextStyle(
                  color: kDarkColor2
                ),)),
              ),
              //       GestureDetector(
              //
              //         onTap: (){
              //           print("Hello");
              // },
              //         child: Container(
              //           padding: EdgeInsets.all(8),
              //           child: Text("Log In"),
              //         ),
              //       ),
              Hero(
                  tag: 'logIn',child: CustomButton(title: "Log In",

                width: 200,

              )),
            ],
          )
      ),
    );
  }
}
