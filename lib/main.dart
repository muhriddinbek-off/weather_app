import 'package:flutter/material.dart';
import 'package:weather_app/api/weather_api.dart';
import 'package:weather_app/bottom_navigation_bar/bottom_navigation.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/region_name.dart';
import 'package:weather_app/provider/weather_modal.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProviderWeatherModal()),
        ChangeNotifierProvider(create: (context) => RegionName()),
        ChangeNotifierProvider(create: (context) => WeatherApi()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'screens',
        routes: {
          'screens': (context) => const BottomNavigatorPage(),
        },
      ),
    );
  }
}
