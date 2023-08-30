import 'package:flutter/material.dart';

class WeaterType extends StatelessWidget {
  const WeaterType({
    super.key,
    required this.weatherType,
  });

  final List weatherType;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weatherType.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(weatherType[index]['iconimg'], height: 40, width: 40),
                Text(
                  weatherType[index]['type'],
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                )
              ],
            ),
          );
        });
  }
}
