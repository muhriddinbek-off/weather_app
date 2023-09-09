import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_modal.dart';

class TempWind extends StatelessWidget {
  const TempWind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final data = context.watch<ProviderWeatherModal>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Text('Temp', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white54)),
            Text('${data.weather[0].current.tempC} c', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white)),
          ],
        ),
        Column(
          children: [
            const Text('Humidy', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white54)),
            Text('${data.weather[0].current.humidity} %', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white)),
          ],
        ),
        Column(
          children: [
            const Text('Wind', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white54)),
            Text('${data.weather[0].current.windKph} km/h', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white)),
          ],
        )
      ],
    );
  }
}
