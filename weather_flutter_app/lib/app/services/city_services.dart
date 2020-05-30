import 'package:weather_flutter_app/app/models/city.dart';
import 'package:weather_flutter_app/app/utils/custom_dio.dart';

class CityService {
  Future<List<City>> getCities() {
    final dio = CustomDio.whithAutentication().instance;
    return dio
        .get('api/v1/locale/city')
        .then((res) => res.data.map<City>(City.fromMap).toList());
  }
}
