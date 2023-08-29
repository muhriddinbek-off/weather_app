import 'package:flutter/material.dart';
import 'package:weather_app/bottom_navigation_bar/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'screens',
      routes: {
        'screens': (context) => const BottomNavigatorPage(),
      },
    );
  }
}
