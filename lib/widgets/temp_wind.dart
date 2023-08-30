import 'package:flutter/material.dart';

class TempWind extends StatelessWidget {
  const TempWind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            Text('Temp', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white54)),
            Text('26 c', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white)),
          ],
        ),
        Column(
          children: const [
            Text('Humidy', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white54)),
            Text('60 %', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white)),
          ],
        ),
        Column(
          children: const [
            Text('Wind', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white54)),
            Text('10 km/h', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white)),
          ],
        )
      ],
    );
  }
}
