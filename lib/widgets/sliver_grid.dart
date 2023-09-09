import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/api/weather_api.dart';
import 'package:weather_app/current/current.dart';
import 'package:weather_app/provider/weather_modal.dart';

class SliverGridWidget extends StatefulWidget {
  const SliverGridWidget({
    super.key,
  });

  @override
  State<SliverGridWidget> createState() => _SliverGridWidgetState();
}

class _SliverGridWidgetState extends State<SliverGridWidget> {
  List nameRegion = [
    'Samarqand',
    'Toshkent',
    'Andijon',
    'Buxoro',
    "Farg'ona",
    'Jizzax',
    'Xorazm',
    'Namangan',
    'Navoiy',
    'Qashqadaryo',
    'Sirdaryo',
    'Surxondaryo',
  ];

  @override
  Widget build(BuildContext context) {
    WeatherApi weatherApi = WeatherApi();
    final num = current;
    // final nameRegionLocation = context.read<ProviderWeatherModal>();
    return Consumer<ProviderWeatherModal>(
      builder: (context, value, child) {
        return SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7),
            itemCount: nameRegion.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(
                    () {
                      num['current'] = index;
                      // nameRegionLocation.getName(nameRegion[index]);
                      // value.getName(nameRegion[index]);
                      // value.getAllWeather();
                      value.getAllWeather(nameRegion[index]);
                      initState();
                    },
                  );
                  print(value.weather[0].location.region);
                },
                child: Container(
                  margin: EdgeInsets.only(left: index % 2 == 0 ? 25 : 10, right: index % 2 == 1 ? 25 : 10, top: 40),
                  decoration: BoxDecoration(
                    color: num['current'] == index ? Colors.green : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text('32 c', style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.w700)),
                      const SizedBox(height: 15),
                      Image.network('https://cdn-icons-png.flaticon.com/128/1163/1163657.png', height: 80, width: 80),
                      const SizedBox(height: 15),
                      Text(
                        'Cloudy',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.green.shade500),
                      ),
                      Text(
                        nameRegion[index],
                        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}
