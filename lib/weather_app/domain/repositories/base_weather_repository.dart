import 'package:weather_app_with_clean_architecure/weather_app/domain/entities/weather.dart';

abstract class BaseWeatherRepository {
   Future<Weather> getWeatherWithCityName(String cityName);
}
