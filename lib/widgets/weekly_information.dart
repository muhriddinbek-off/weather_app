import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/api/weather_api.dart';
import 'package:weather_app/provider/weather_modal.dart';
import 'package:intl/intl.dart';

class WeeklyInformation extends StatefulWidget {
  const WeeklyInformation({
    super.key,
  });

  @override
  State<WeeklyInformation> createState() => _WeeklyInformationState();
}

class _WeeklyInformationState extends State<WeeklyInformation> {
  WeatherApi weatherApi = WeatherApi();
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderWeatherModal>(builder: (context, value, child) {
      if (value.weather.isEmpty) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(childCount: value.weather[0].forecast.forecatday.length, (context, index) {
            final weekName = DateTime.parse(value.weather[0].forecast.forecatday[index].date);
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 55, 59, 80),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black38, offset: Offset(0, 4), blurRadius: 8),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${DateFormat('EEEE').format(weekName)} ',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      Text(
                        '${value.weather[0].forecast.forecatday[index].date} ',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white54, height: 1.6),
                      )
                    ],
                  ),
                  Text('${value.weather[0].forecast.forecatday[index].day.maxtempC} c', style: const TextStyle(fontSize: 34, color: Colors.white, fontWeight: FontWeight.w700)),
                  Image.network('https:${value.weather[0].forecast.forecatday[index].day.condition.icon}', height: 60, width: 60),
                ],
              ),
            );
          }),
          itemExtent: 150);
    });
  }
}
