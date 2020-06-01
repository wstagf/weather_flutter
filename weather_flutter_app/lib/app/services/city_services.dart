import 'package:weather_flutter_app/app/models/city.dart';
import 'package:weather_flutter_app/app/utils/custom_dio.dart';

class CityService {
  Future<List<City>> getCities() async {
    List<City> list = [];
    try {
      final dio = CustomDio.whithAutentication().instance;
      List<dynamic> data = await dio.get('api/v1/locale/city').then((res) {
        return res.data.toList();
      });

      data.forEach((element) {
        list.add(City.fromMap(element));
      });

      return list;
    } catch (e) {
      throw (e);
    }
  }
}
