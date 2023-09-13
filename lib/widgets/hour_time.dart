import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_modal.dart';
import 'package:intl/intl.dart';

class HourTime extends StatelessWidget {
  const HourTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderWeatherModal>(builder: (context, value, child) {
      if (value.weather.isEmpty) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: value.weather[0].forecast.forecatday[0].hour.length,
          itemBuilder: (context, index) {
            final hours = DateTime.parse(value.weather[0].forecast.forecatday[0].hour[index].time);
            bool isColors = value.weather[0].forecast.forecatday[0].hour[index].condition.icon.startsWith('day', 35);

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 105,
              width: 160,
              decoration: BoxDecoration(
                color: isColors ? Colors.blue.shade100 : const Color.fromARGB(255, 55, 59, 80),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Row(
                children: [
                  Image.network('https:${value.weather[0].forecast.forecatday[0].hour[index].condition.icon}', height: 55, width: 55),
                  const SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${DateFormat.Hm().format(hours)} ',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: isColors ? Colors.blue.shade400 : Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${value.weather[0].forecast.forecatday[0].hour[index].tempC} c',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: isColors ? Colors.blue.shade400 : Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            );
          });
    });
  }
}
