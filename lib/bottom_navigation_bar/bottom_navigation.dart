import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/api/weather_api.dart';
import 'package:weather_app/provider/weather_modal.dart';
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
    WeatherApi weatherApi = WeatherApi();
    return Consumer<ProviderWeatherModal>(builder: (context, value, child) {
      if (value.weather.isEmpty) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/not_internet/no.png'),
            const Text('Internetga ulanmagansiz', style: TextStyle(decoration: TextDecoration.none, fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white)),
            const SizedBox(height: 40),
            ElevatedButton(
                style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size(300, 56)),
                  backgroundColor: const MaterialStatePropertyAll(Colors.greenAccent),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                ),
                onPressed: () {
                  weatherApi.getWeatherInformation('Samarqand');
                  context.read<ProviderWeatherModal>().getAllWeather();
                },
                child: const Text(
                  'Qayta urinib ko\'ring',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54),
                )),
          ],
        );
      }
      return Scaffold(
        backgroundColor: current % 2 == 0 ? const Color.fromARGB(255, 29, 38, 80) : const Color.fromARGB(255, 146, 156, 212),
        body: pages[current],
        bottomNavigationBar: SizedBox(
          height: 70,
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: BottomNavigationBar(
              fixedColor: Colors.white,
              backgroundColor: current % 2 == 0 ? const Color.fromARGB(255, 48, 55, 90) : const Color.fromARGB(255, 176, 184, 228),
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
    });
  }
}
