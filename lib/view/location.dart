import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          title: Text(
            'Pick a location',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
