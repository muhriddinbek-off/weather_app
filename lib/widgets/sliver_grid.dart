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
  WeatherApi weatherApi = WeatherApi();
  @override
  Widget build(BuildContext context) {
    final num = current;

    return Consumer<ProviderWeatherModal>(builder: ((context, value, child) {
      if (value.weather.isEmpty) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7),
        itemCount: nameRegion.length,
        itemBuilder: (context, index) {
          final date = nameRegion;
          final img = regionImage;
          return InkWell(
            onTap: () {
              setState(
                () {
                  num['current'] = index;
                  context.read<ProviderWeatherModal>().weather.removeAt(0);
                  context.read<ProviderWeatherModal>().regions = date[index];
                  weatherApi.getWeatherInformation(date[index]);
                  context.read<ProviderWeatherModal>().getAllWeather();
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 15),
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(left: index % 2 == 0 ? 25 : 10, right: index % 2 == 1 ? 25 : 10, top: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ],
                  image: DecorationImage(image: AssetImage(img[index]), fit: BoxFit.cover, colorFilter: num['current'] == index ? const ColorFilter.linearToSrgbGamma() : const ColorFilter.srgbToLinearGamma())),
              child: Text(
                date[index],
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                  color: num['current'] == index ? Colors.white : const Color.fromARGB(255, 122, 183, 233),
                ),
              ),
            ),
          );
        },
      );
    }));
  }
}
