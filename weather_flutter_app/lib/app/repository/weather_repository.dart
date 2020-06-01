import 'package:weather_flutter_app/app/models/weather_now.dart';
import 'package:weather_flutter_app/app/services/weather_now_service.dart';

class WeaterRepository {
  WeatherNowResponse weatherNowCurrent;
  WeatherNowService weatherNowService = WeatherNowService();

  Future<WeatherNowResponse> getWeatherCurrent() async {
    try {
      weatherNowCurrent = await weatherNowService.getWheaterCurrent();
      return weatherNowCurrent;
    } catch (e) {
      throw (e);
    }
  }
}
