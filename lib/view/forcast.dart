import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/api/weather_api.dart';
import 'package:weather_app/provider/weather_modal.dart';
import 'package:weather_app/widgets/hour_time.dart';
import 'package:weather_app/widgets/text_title.dart';

import '../widgets/weekly_information.dart';

class ForcastPage extends StatefulWidget {
  const ForcastPage({super.key});

  @override
  State<ForcastPage> createState() => _ForcastPageState();
}

class _ForcastPageState extends State<ForcastPage> {
  WeatherApi weatherApi = WeatherApi();
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderWeatherModal>(builder: (context, value, child) {
      if (value.weather.isEmpty) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return CustomScrollView(
        slivers: [
          const SliverAppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 32, 41, 85),
            centerTitle: true,
            pinned: true,
            title: Text(
              'Forecast Report',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                TextTitle(text1: 'Today', text2: '${value.weather[0].forecast.forecatday[0].date} ', top: 20, bottom: 15),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: const HourTime(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 25),
                      child: Text('Next Forecast', style: TextStyle(fontSize: 20, color: Colors.white54, fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const WeeklyInformation(),
        ],
      );
    });
  }
}
