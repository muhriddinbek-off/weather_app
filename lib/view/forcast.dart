import 'package:flutter/material.dart';
import 'package:weather_app/widgets/hour_time.dart';
import 'package:weather_app/widgets/text_title.dart';

import '../widgets/weekly_information.dart';

class ForcastPage extends StatelessWidget {
  const ForcastPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              const TextTitle(text1: 'Today', text2: '29-08-2023', top: 20, bottom: 15),
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
  }
}
