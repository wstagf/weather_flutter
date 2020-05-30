import 'package:flutter/material.dart';
import 'package:weather_flutter_app/app/utils/size_utils.dart';
import 'package:weather_flutter_app/app/utils/theme_utils.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeUtils.init(context);
    return Scaffold(
      backgroundColor: ThemeUtils.getColor('color1'),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              ThemeUtils.getColor('color2'),
              ThemeUtils.getColor('color3'),
            ])),
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              ThemeUtils.getColor('color1'),
            ),
          ),
        ),
      ),
    );
  }
}
