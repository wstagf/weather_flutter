import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_flutter_app/app/models/store_state.dart';
import 'package:weather_flutter_app/app/models/weather_now.dart';
import 'package:weather_flutter_app/app/repository/weather_repository.dart';
import 'package:weather_flutter_app/app/utils/store_utils.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  WeaterRepository weaterRepository = Modular.get<WeaterRepository>();

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
    } catch (e) {
      print(e);
    }
  }
}
