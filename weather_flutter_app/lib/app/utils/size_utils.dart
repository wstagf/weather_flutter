import 'package:flutter/material.dart';

class SizeUtils {
  static MediaQueryData _mediaQueryData;
  static double widthScreen;
  static double heigthScreen;
  static double statusBarHeigth;

  static init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    widthScreen = _mediaQueryData.size.width;
    heigthScreen = _mediaQueryData.size.height;
    statusBarHeigth = _mediaQueryData.padding.top;
  }
}
