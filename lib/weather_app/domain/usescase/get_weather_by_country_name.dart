import 'package:weather_app_with_clean_architecure/weather_app/domain/entities/weather.dart';
import 'package:weather_app_with_clean_architecure/weather_app/domain/repositories/base_weather_repository.dart';


class GetWeatherByCountryName {
  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  Future <Weather> excute(String cityName) async{
    return await repository.getWeatherWithCityName(cityName);
  }
}
