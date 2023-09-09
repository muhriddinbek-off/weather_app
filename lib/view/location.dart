import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_modal.dart';
import '../widgets/hour_time.dart';
import '../widgets/temp_wind.dart';
import '../widgets/text_title.dart';
import '../widgets/weather_type.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    List weatherType = [
      {'type': 'Rain', 'iconimg': 'https://img.icons8.com/?size=1x&id=15360&format=png'},
      {'type': 'Drizz', 'iconimg': 'https://cdn-icons-png.flaticon.com/512/2530/2530064.png'},
      {'type': 'Thunder', 'iconimg': 'https://cdn-icons-png.flaticon.com/128/8569/8569915.png'},
      {'type': 'Light-rain', 'iconimg': 'https://cdn-icons-png.flaticon.com/128/1959/1959342.png'},
      {'type': 'Snow', 'iconimg': 'https://cdn-icons-png.flaticon.com/128/2315/2315309.png'},
    ];
    // var myProvider = context.read<ProviderWeatherModal>();

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Consumer<ProviderWeatherModal>(
            builder: (context, value, child) {
              if (value.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (value.weather.isNotEmpty) {
                return Column(
                  children: [
                    const SizedBox(height: 40),
                    Container(
                      height: 100,
                      color: const Color.fromARGB(255, 55, 59, 80),
                      child: WeaterType(weatherType: weatherType),
                    ),
                    const SizedBox(height: 25),
                    Text('${value.weather[0].location.region} viloyati', style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white)),
                    Text('${value.weather[0].current.lastUpdated} ', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white54, height: 1.7)),
                    const SizedBox(height: 50),
                    Image.network(value.weather[0].current.condition.icon, height: 100, width: 100),
                    Text('${value.weather[0].current.condition.text} ', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white)),
                    const SizedBox(height: 35),
                    Text('${value.weather[0].current.tempC} c', style: const TextStyle(fontSize: 43, fontWeight: FontWeight.w900, color: Colors.white)),
                    const SizedBox(height: 40),
                    const TempWind(),
                    const TextTitle(text1: 'Today', text2: 'View report', top: 40, bottom: 30),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.09,
                      child: const HourTime(),
                    ),
                  ],
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ],
    );
  }
}
