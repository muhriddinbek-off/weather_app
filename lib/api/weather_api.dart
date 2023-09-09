import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/modals/weather_class.dart';

class WeatherApi {
  Future getWeatherInformation(String name) async {
    print('response ketti');
    Uri url = Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=4c86cc5911e74b6abe9102831230203&q=$name&days=7');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      print('response keldi');
      return WeatherModal.fromJson(jsonDecode(response.body));
    }
  }
}
