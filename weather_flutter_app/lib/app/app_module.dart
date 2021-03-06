import 'package:weather_flutter_app/app/repository/city_repository.dart';
import 'package:weather_flutter_app/app/repository/weather_repository.dart';
import 'package:weather_flutter_app/app/splash/splash_controller.dart';
import 'package:weather_flutter_app/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:weather_flutter_app/app/app_widget.dart';
import 'package:weather_flutter_app/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
        Bind((i) => AppController()),
        Bind((i) => CityRepository()),
        Bind((i) => WeaterRepository()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
