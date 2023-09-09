import 'package:weather_app/modals/current.dart';
import 'package:weather_app/modals/forecast.dart';
import 'package:weather_app/modals/location.dart';

class WeatherModal {
  final Location location;
  final Current current;
  Forecast forecast;
  WeatherModal({
    required this.location,
    required this.current,
    required this.forecast,
  });
  factory WeatherModal.fromJson(Map<String, dynamic> json) {
    return WeatherModal(
      location: Location.fromJson(json['location']),
      current: Current.fromJson(json['current']),
      forecast: Forecast.fromJson(json['forecast']),
    );
  }
}
