import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_flutter_app/app/repository/city_repository.dart';
import 'package:weather_flutter_app/app/repository/weather_repository.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashBase with _$SplashController;

abstract class _SplashBase with Store {
  CityRepository cityRepository = Modular.get<CityRepository>();
  WeaterRepository weaterRepository = Modular.get<WeaterRepository>();

  @action
  Future getCities() async {
    try {
      await cityRepository.getCities();
    } catch (e) {
      print(e);
    }
  }

  @action
  getWeaterCurrent() async {
    try {
      await weaterRepository.getWeatherCurrent();
    } catch (e) {
      print(e);
    }
  }
}
