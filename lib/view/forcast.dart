import 'package:flutter/material.dart';

class ForcastPage extends StatelessWidget {
  const ForcastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('Forcast'),
        ),
      ],
    );
  }
}
