import 'package:flutter/material.dart';
import 'constans.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        gradient: title == "Log In" ? kLightGradient : kDarkGradient,

        borderRadius: BorderRadius.circular(30),
      ),
      child: MaterialButton(
        height: 64,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 28.0),
        ),
      ),
    );
  }
}
