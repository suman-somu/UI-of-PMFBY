import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:pbyj_app/weather/model/weather_model.dart';

class WeatherApiClient {
  // void getLocation() async {
  //   Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.low);
  //   double latt = position.latitude;
  //   double lonn = position.longitude;
  //   //  print(position.latitude);
  //   //  print(position.longitude);
  // }

  Future<Weather> getCurrentWeather() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    double latt = position.latitude;
    double lonn = position.longitude;
    final endpoint = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=${latt.toString()}&lon=${lonn.toString()}&appid=73069d8a79ed02e00d354f67e183d26a&units=metric');
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body));
    return Weather.fromJson(body);
  }
}
