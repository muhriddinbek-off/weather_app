import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_modal.dart';

class HourTime extends StatelessWidget {
  const HourTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final data = context.read<ProviderWeatherModal>();
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.weather[0].forecast.forecatday[0].hour.length,
        itemBuilder: (context, index) {
          bool isColors = data.weather[0].forecast.forecatday[0].hour[index].condition.icon.startsWith('day', 35);

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 105,
            width: 160,
            decoration: BoxDecoration(
              // color: index < 12 ? Colors.blue.shade100 : const Color.fromARGB(255, 55, 59, 80),
              color: isColors ? Colors.blue.shade100 : const Color.fromARGB(255, 55, 59, 80),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Row(
              children: [
                Image.network(data.weather[0].forecast.forecatday[0].hour[index].condition.icon, height: 55, width: 55),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 65,
                      child: Text(
                        '${data.weather[0].forecast.forecatday[0].hour[index].time} ',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: isColors ? Colors.blue.shade400 : Colors.white),
                      ),
                    ),
                    Text(
                      '${data.weather[0].forecast.forecatday[0].hour[index].tempC} c',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: isColors ? Colors.blue.shade400 : Colors.white),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
