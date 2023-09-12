import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_modal.dart';

import '../widgets/search.dart';
import '../widgets/sliver_grid.dart';

class PickALocation extends StatelessWidget {
  const PickALocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderWeatherModal>(builder: (context, value, child) {
      if (value.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: const Color.fromARGB(255, 146, 156, 212),
            centerTitle: true,
            title: Text('${value.weather[0].location.region} ', style: TextStyle(fontSize: 27, color: Colors.white, fontWeight: FontWeight.w800)),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(150),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.06),
                    child: const Text(
                      'Type the area or city you want to know the detailed weather information at this time.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SearchWidget(),
                ],
              ),
            ),
          ),
          const SliverGridWidget(),
        ],
      );
    });
  }
}
