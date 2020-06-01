import 'package:weather_flutter_app/app/models/weather_now.dart';
import 'package:weather_flutter_app/app/utils/custom_dio.dart';
import 'package:weather_flutter_app/environments/env.dart';

class WeatherNowService {
  Future<WeatherNowResponse> getWheaterCurrent(int citID) async {
    try {
      final dio = CustomDio.whithAutentication().instance;
      Map data =
          await dio.get('$apiPath/weather/locale/$citID/current').then((res) {
        return res.data;
      });

      return WeatherNowResponse.fromMap(data);
    } catch (e) {
      throw (e);
    }
  }

  Future registerCity(int citID) async {
    try {
      final dio = CustomDio.whithAutentication().instance;
      Map data =
          await dio.get('$apiPath/weather/locale/${citID}/current').then((res) {
        return res.data;
      });

      return WeatherNowResponse.fromMap(data);
    } catch (e) {
      throw (e);
    }
  }
}
