import 'package:weather_flutter_app/app/models/weather_now.dart';
import 'package:weather_flutter_app/app/services/weather_now_service.dart';

class WeaterRepository {
  WeatherNowResponse weatherNowCurrent;
  WeatherNowService weatherNowService = WeatherNowService();

  Future getWeatherCurrent() async {
    try {
      weatherNowCurrent = await weatherNowService.getWheaterCurrent();
    } catch (e) {
      throw (e);
    }
  }
}
