import 'package:flutter/material.dart';

class WeeklyInformation extends StatelessWidget {
  const WeeklyInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List weekDays = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thurisday',
      'Friday',
      'Saturday',
      'Sunday',
    ];
    return SliverFixedExtentList(
        delegate: SliverChildBuilderDelegate(childCount: 7, (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 55, 59, 80),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(color: Colors.black38, offset: Offset(0, 4), blurRadius: 8),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      weekDays[index],
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    const Text(
                      'July 22',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white54, height: 1.6),
                    )
                  ],
                ),
                const Text('26 c', style: TextStyle(fontSize: 34, color: Colors.white, fontWeight: FontWeight.w700)),
                Image.network('https://cdn-icons-png.flaticon.com/128/1163/1163657.png', height: 60, width: 60),
              ],
            ),
          );
        }),
        itemExtent: 120);
  }
}
