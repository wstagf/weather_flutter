import 'package:weather_flutter_app/app/models/city.dart';
import 'package:weather_flutter_app/app/services/city_services.dart';

class CityRepository {
  List<City> cities = [];
  CityService cityService = CityService();

  Future getCities() async {
    cities = await cityService.getCities();
  }
}
