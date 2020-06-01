import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_flutter_app/app/repository/city_repository.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashBase with _$SplashController;

abstract class _SplashBase with Store {
  CityRepository cityRepository = Modular.get<CityRepository>();

  @action
  Future getCities() async {
    try {
      await cityRepository.getCities();
    } catch (e) {
      print(e);
    }
  }
}
