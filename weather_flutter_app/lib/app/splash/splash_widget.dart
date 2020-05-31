import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:weather_flutter_app/app/splash/splash_controller.dart';
import 'package:weather_flutter_app/app/utils/size_utils.dart';
import 'package:weather_flutter_app/app/utils/theme_utils.dart';

class SplashWidget extends StatefulWidget {
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends ModularState<SplashWidget, SplashController> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    //await controller.getCities();
    //  Modular.to.pushReplacementNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    SizeUtils.init(context);
    return Scaffold(
      backgroundColor: ThemeUtils.getColor('color1'),
      body: Stack(children: [
        Center(
          child: FlareActor("assets/animations/City-cloud.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              isPaused: false,
              animation: "stop"),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: [0.0, 0.9],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ThemeUtils.getColor('color1').withAlpha(200),
                ThemeUtils.getColor('color4').withAlpha(120),
              ],
            ),
          ),
        ),
        Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              ThemeUtils.getColor('color1'),
            ),
          ),
        ),
      ]),
    );
  }
}
