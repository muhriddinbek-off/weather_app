import 'package:flutter/material.dart';
import 'package:weather_app/api/weather_api.dart';
import 'package:weather_app/modals/weather_class.dart';

class ProviderWeatherModal extends ChangeNotifier {
  ProviderWeatherModal() {
    getAllWeather(region);
  }

  List<WeatherModal> weather = [];
  bool isLoading = false;
  String region = 'Samarqand';

  void getAllWeather(String newRegion) async {
    changeLoadingState();
    region = newRegion;
    final data = await WeatherApi().getWeatherInformation(region);
    weather.add(data);
    changeLoadingState();
  }

  void changeLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
