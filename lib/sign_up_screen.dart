import 'package:flutter/material.dart';
import 'background_decoration.dart';
import 'constans.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundDecoration(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(color:kMainColor, fontSize: 34),
              ),
              SizedBox(height: 16.0),
              CustomTextFormField(label: "Email",),
              SizedBox(height: 8.0),
              CustomTextFormField(label: "Password",),
              SizedBox(height: 8.0),      CustomTextFormField(label: "Confirm Password",),
              SizedBox(height: 8.0),
              //       GestureDetector(
              //
              //         onTap: (){
              //           print("Hello");
              // },
              //         child: Container(
              //           padding: EdgeInsets.all(8),
              //           child: Text("Sign Up"),
              //         ),
              //       ),
              CustomButton(title: "Sign Up",),
            ],
          )
      ),
    );
  }
}
