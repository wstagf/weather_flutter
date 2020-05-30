import 'package:flutter/material.dart';

class ThemeUtils {
  static Map loadingTheme = {
    'color1': Color(0xff79B0AA),
    'color2': Color(0xffF2AFB4),
    'color3': Color(0xffFAF3B5),
    'color4': Color(0xffE4EFC5),
    'color5': Color(0xffDADADA),
    'color6': Color(0xff333333),
  };

  static Color getColor(String color) {
    return loadingTheme[color];
  }
}
