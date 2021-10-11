
import 'package:flutter/material.dart';
import 'package:rampit/theme/colors.dart';

class MyStyles {
  MyStyles();
  
  
  static ThemeData themeData() {
    return ThemeData(
      highlightColor: info,
      primaryColor: primary,
      primaryColorLight: secondary,
      backgroundColor: white
    );
  }
}