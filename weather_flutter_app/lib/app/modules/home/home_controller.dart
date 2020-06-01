import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_flutter_app/app/models/store_state.dart';
import 'package:weather_flutter_app/app/models/weather_now.dart';
import 'package:weather_flutter_app/app/repository/city_repository.dart';
import 'package:weather_flutter_app/app/repository/weather_repository.dart';
import 'package:weather_flutter_app/app/utils/store_utils.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  WeaterRepository weaterRepository = Modular.get<WeaterRepository>();
  CityRepository cityRepository = Modular.get<CityRepository>();

  @observable
  WeatherNowResponse weatherCurrent = WeatherNowResponse();

  @observable
  ObservableFuture<WeatherNowResponse> _weatherCurrentFuture;

  @computed
  StoreState get weatherCurrentState =>
      StoreUtils.statusCheck(_weatherCurrentFuture);

  @action
  getWeaterCurrent() async {
    try {
      _weatherCurrentFuture =
          ObservableFuture(weaterRepository.getWeatherCurrent());

      weatherCurrent = await _weatherCurrentFuture;
      textEditingController.text = weatherCurrent.name;
      cityCurrentName = weatherCurrent.name;
    } catch (e) {
      print(e);
    }
  }

  String cityCurrentName = '';

  TextEditingController textEditingController = TextEditingController();

  @action
  Future<void> changeCity(String citySearch) async {
    if (textEditingController.text.isNotEmpty) {
      var city = cityRepository.cities
          .where((element) => element.name.contains(citySearch))
          .toList();
      print(city);
      var isRegistred = await weaterRepository.registerCity(city[0]);

      if (isRegistred) {
        getWeaterCurrent();
      }
    }
  }

  @action
  void clearInput() {
    textEditingController.text = '';
  }
}
