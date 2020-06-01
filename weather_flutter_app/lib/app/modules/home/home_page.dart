import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:weather_flutter_app/app/models/store_state.dart';
import 'package:weather_flutter_app/app/modules/home/home_controller.dart';
import 'package:weather_flutter_app/app/utils/theme_utils.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  FlareController flareController;

  @override
  void initState() {
    // TODO: implement initState
    controller.getWeaterCurrent();
    super.initState();
  }

  Widget _makeContent() {
    return Scaffold(
      backgroundColor: ThemeUtils.getColor('color1'),
      body: Stack(children: [
        Center(
          child: FlareActor("assets/animations/City-cloud.flr",
              controller: flareController,
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
                controller.weatherCurrent.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                controller.weatherCurrent.data.condition,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Temperatura '),
                      Text(
                        controller.weatherCurrent.data.temperature.toString() +
                            " °C",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Direção'),
                      Text(
                        controller.weatherCurrent.data.wind_direction,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Umidade relativa'),
                      Text(
                        controller.weatherCurrent.data.wind_velocity
                                .toStringAsFixed(0) +
                            ' %',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Velocidade'),
                      Text(
                        controller.weatherCurrent.data.wind_velocity
                                .toStringAsFixed(0) +
                            ' km/h',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _makeLoading() {
    return Scaffold(
      backgroundColor: ThemeUtils.getColor('color1'),
      body: Stack(children: [
        Center(
          child: FlareActor("assets/animations/City-cloud.flr",
              controller: flareController,
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

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      switch (controller.weatherCurrentState) {
        case StoreState.loaded:
          return _makeContent();
          break;

        case StoreState.initial:
        case StoreState.loading:
        case StoreState.error:
        default:
          return _makeLoading();
          break;
      }
    });
  }
}
