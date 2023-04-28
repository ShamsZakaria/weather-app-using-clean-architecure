import 'package:weather_app_with_clean_architecure/core/utils/constances.dart';
import 'package:weather_app_with_clean_architecure/weather_app/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<weatherModel?> getWeatherBycountryName(
      String
          countryName); //return for weathermodel(model لان ده اللي فيه ال json وبعمل فورمات للداتا اللي راجعه ) not weather(entity)
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<weatherModel?> getWeatherBycountryName(String countryName) async {
    //throw UnimplementedError(); //methode without implementation
    try {
      var response = await Dio().get(
          '${AppConstances.baseUlr}/weather?q=$countryName&appid=${AppConstances.appkey}');
      print(response);
      return weatherModel.fromJson((response.data));
    } catch (e) {
      print(e);
      return null;
    }
  }
}
