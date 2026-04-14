import 'package:chat_second/constans.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
 final String label;
  const CustomTextFormField({
    super.key, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          label: Text(label,style: TextStyle(color:  kDarkColor2,),),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kLightColor2,
                width: 2),
            borderRadius: BorderRadius.circular(6),
          ),focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kDarkColor2,
            width: 3),
        borderRadius: BorderRadius.circular(12),

      )
      ),
    );
  }
}
