import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:weather_flutter_app/app/utils/theme_utils.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FlareController controller;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeUtils.getColor('color1'),
      body: Stack(children: [
        Center(
          child: FlareActor("assets/animations/City-cloud.flr",
              controller: controller,
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
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Goiânia",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36),
              ),
              Text(
                "condition",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28),
              ),
              Text(
                "temperature °C",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "sensation °C",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "wind_direction",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "wind_velocity",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "humidity",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "wind_direction",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "wind_velocity",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
