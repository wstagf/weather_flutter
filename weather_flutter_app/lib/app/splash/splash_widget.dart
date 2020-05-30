import 'package:flutter/material.dart';
import 'package:weather_flutter_app/app/utils/size_utils.dart';
import 'package:weather_flutter_app/app/utils/theme_utils.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeUtils.init(context);
    return Scaffold(
      backgroundColor: ThemeUtils.getColor('color1'),
      body: CircularProgressIndicator(),
    );
  }
}
