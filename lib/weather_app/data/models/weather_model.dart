import 'package:weather_app_with_clean_architecure/weather_app/domain/entities/weather.dart';

class weatherModel extends Weather {
  weatherModel(
      super.cityName, super.description, super.id, super.main, super.pressure);

  factory weatherModel.fromJson(Map<String, dynamic> json) => weatherModel(
        json["id"],
        json["name"],
        json["weather"][0]["main"],
        json["weather"][0]["description"],
        json["weather"]["pressure"],
      );
}
