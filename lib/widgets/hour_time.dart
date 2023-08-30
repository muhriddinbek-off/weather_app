import 'package:flutter/material.dart';

class HourTime extends StatelessWidget {
  const HourTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 24,
        itemBuilder: (context, index) {
          Color colors = index < 12 ? Colors.black : Colors.white;
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 105,
            width: 160,
            decoration: BoxDecoration(
              color: index < 12 ? Colors.blue.shade100 : const Color.fromARGB(255, 55, 59, 80),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Row(
              children: [
                Image.network('https://cdn-icons-png.flaticon.com/128/1163/1163657.png', height: 55, width: 55),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '10.00am',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: colors),
                    ),
                    Text(
                      '24 c',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: colors),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
