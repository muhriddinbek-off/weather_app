import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/api/weather_api.dart';
import 'package:weather_app/modals/weather_class.dart';

class ProviderWeatherModal extends ChangeNotifier {
  ProviderWeatherModal() {
    getAllWeather();
  }
  List<WeatherModal> weather = [];
  bool isLoading = false;
  String regions = 'Samarqand';
  Future<void> getAllWeather() async {
    changeLoadingState();
    final data = await WeatherApi().getWeatherInformation(regions);
    weather.add(data);
    print(weather[0].location.region);
    print(weather[0].forecast.forecatday[0].date);
    changeLoadingState();
  }

  void changeLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
