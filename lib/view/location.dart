import 'package:flutter/material.dart';

import '../widgets/hour_time.dart';
import '../widgets/temp_wind.dart';
import '../widgets/text_title.dart';
import '../widgets/weather_type.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    List weatherType = [
      {'type': 'Rain', 'iconimg': 'https://img.icons8.com/?size=1x&id=15360&format=png'},
      {'type': 'Drizz', 'iconimg': 'https://cdn-icons-png.flaticon.com/512/2530/2530064.png'},
      {'type': 'Thunder', 'iconimg': 'https://cdn-icons-png.flaticon.com/128/8569/8569915.png'},
      {'type': 'Light-rain', 'iconimg': 'https://cdn-icons-png.flaticon.com/128/1959/1959342.png'},
      {'type': 'Snow', 'iconimg': 'https://cdn-icons-png.flaticon.com/128/2315/2315309.png'},
    ];

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                height: 100,
                color: const Color.fromARGB(255, 55, 59, 80),
                child: WeaterType(weatherType: weatherType),
              ),
              const SizedBox(height: 25),
              const Text('Toshkent viloyati', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white)),
              const Text('29-08-2023', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white54, height: 1.7)),
              const SizedBox(height: 50),
              Image.network('https://cdn-icons-png.flaticon.com/128/1163/1163657.png', height: 100, width: 100),
              const SizedBox(height: 35),
              const Text('26 c', style: TextStyle(fontSize: 43, fontWeight: FontWeight.w900, color: Colors.white)),
              const SizedBox(height: 40),
              const TempWind(),
              const TextTitle(text1: 'Today', text2: 'View report'),
              const SizedBox(
                height: 100,
                child: HourTime(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
