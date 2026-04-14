

import 'package:flutter/material.dart';

Color kMainColor = Colors.teal;

Color kLightColor1 = Colors.teal.shade300;
Color kLightColor2 = Colors.teal.shade500;

Color kDarkColor1 = Colors.teal.shade700;
Color kDarkColor2 = Colors.teal.shade900;

LinearGradient kLightGradient = LinearGradient(
  colors: [kLightColor2,kLightColor1],
  begin: AlignmentGeometry.topCenter,
  end: AlignmentGeometry.bottomCenter,
);
LinearGradient kDarkGradient = LinearGradient(
  colors: [kDarkColor2,kDarkColor1],
  begin: AlignmentGeometry.topCenter,
  end: AlignmentGeometry.bottomCenter,
);