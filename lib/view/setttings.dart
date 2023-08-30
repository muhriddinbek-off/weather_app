import 'package:flutter/material.dart';

import '../widgets/settings_part.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          expandedHeight: 80,
          backgroundColor: Color.fromARGB(255, 176, 184, 228),
          centerTitle: true,
          title: Text('Settings', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white)),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SettingsPart(iconName: Icons.home_outlined, title: 'Forecast', ontap: () {}),
              SettingsPart(iconName: Icons.map_sharp, title: 'Map', ontap: () {}),
              SettingsPart(iconName: Icons.air_outlined, title: 'Historical Weather', ontap: () {}),
              SettingsPart(iconName: Icons.star_half_outlined, title: 'Favourites', ontap: () {}),
              SettingsPart(iconName: Icons.newspaper_outlined, title: 'News', ontap: () {}),
              SettingsPart(iconName: Icons.mood_outlined, title: 'Send Feedback', ontap: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
