import 'package:flutter/material.dart';
import 'package:weather_app/view/forcast.dart';
import 'package:weather_app/view/location.dart';
import 'package:weather_app/view/pick_a_location.dart';
import 'package:weather_app/view/setttings.dart';

class BottomNavigatorPage extends StatefulWidget {
  const BottomNavigatorPage({super.key});

  @override
  State<BottomNavigatorPage> createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    List pages = [
      const LocationPage(),
      const PickALocation(),
      const ForcastPage(),
      const SettingsPage(),
    ];
    return Scaffold(
      backgroundColor: current % 2 == 0 ? Color.fromARGB(255, 29, 38, 80) : const Color.fromARGB(255, 146, 156, 212),
      body: pages[current],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          child: BottomNavigationBar(
            fixedColor: Colors.white,
            backgroundColor: current % 2 == 0 ? Color.fromARGB(255, 48, 55, 90) : const Color.fromARGB(255, 176, 184, 228),
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: current % 2 == 0 ? Colors.blue : Colors.black,
            onTap: (value) {
              setState(() {});
              current = value;
            },
            currentIndex: current,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'My Location'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Forcast'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
