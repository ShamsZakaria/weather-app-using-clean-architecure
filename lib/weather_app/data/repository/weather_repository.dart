import 'package:weather_app_with_clean_architecure/weather_app/data/data_sources/remote_data_source.dart';
import 'package:weather_app_with_clean_architecure/weather_app/domain/entities/weather.dart';
import 'package:weather_app_with_clean_architecure/weather_app/domain/repositories/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseremoteDataSource;

  WeatherRepository(this.baseremoteDataSource);
  @override
  Future<Weather> getWeatherWithCityName(String countryName) async {
   return (await baseremoteDataSource.getWeatherBycountryName(countryName))!;
  }
}
