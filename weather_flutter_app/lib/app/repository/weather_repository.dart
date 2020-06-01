import 'package:weather_flutter_app/app/models/city.dart';
import 'package:weather_flutter_app/app/models/register_city_response.dart';
import 'package:weather_flutter_app/app/models/weather_now.dart';
import 'package:weather_flutter_app/app/services/user_token_management_service.dart';
import 'package:weather_flutter_app/app/services/weather_now_service.dart';

class WeaterRepository {
  City currentCity = City.fromMap(
      {"id": 6861, "name": "Goiânia", "state": "GO", "country": "BR  "});
  WeatherNowResponse weatherNowCurrent;
  WeatherNowService weatherNowService = WeatherNowService();
  UserTokenManagement userTokenManagement = UserTokenManagement();

  Future<WeatherNowResponse> getWeatherCurrent() async {
    try {
      weatherNowCurrent =
          await weatherNowService.getWheaterCurrent(currentCity.id);
      return weatherNowCurrent;
    } catch (e) {
      throw (e);
    }
  }

  Future<bool> registerCity(City city) async {
    try {
      await userTokenManagement.registerCity(city.id);
      currentCity = city;
      return true;
    } catch (e) {
      throw (e);
    }
  }
}
