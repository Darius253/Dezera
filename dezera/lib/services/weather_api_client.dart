import 'dart:convert';

import 'package:dezera/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherApiCLient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=c307c1791102696e2aaf38f84a5bdbd1&units=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    //print(Weather.fromJson(body).city);
    return Weather.fromJson(body);
  }
}
