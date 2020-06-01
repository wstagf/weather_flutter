import 'package:dio/dio.dart';
import 'package:weather_flutter_app/app/models/register_city_response.dart';
import 'package:weather_flutter_app/app/utils/custom_dio.dart';
import 'package:weather_flutter_app/environments/env.dart';

class UserTokenManagement {
  Future<RegisterCityResponse> registerCity(int cityId) async {
    try {
      final dio = CustomDio.whithOutToken().instance;
      Map data = await dio
          .put('api-manager/user-token/$token/locales',
              data: {"localeId[]": cityId},
              options: Options(contentType: Headers.formUrlEncodedContentType))
          .then((res) {
        return res.data.toList();
      });

      RegisterCityResponse registerCityResponse =
          RegisterCityResponse.fromMap(data);

      print(registerCityResponse);
      return registerCityResponse;
    } catch (e) {
      throw (e);
    }
  }
}
