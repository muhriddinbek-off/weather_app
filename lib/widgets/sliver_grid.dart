import 'package:flutter/material.dart';

class SliverGridWidget extends StatelessWidget {
  const SliverGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7),
        itemCount: 12,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: index % 2 == 0 ? 25 : 10, right: index % 2 == 1 ? 25 : 10, top: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 4),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text('32 c', style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.w700)),
                const SizedBox(height: 15),
                Image.network('https://cdn-icons-png.flaticon.com/128/1163/1163657.png', height: 80, width: 80),
                const SizedBox(height: 15),
                Text(
                  'Cloudy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.green.shade500),
                ),
                const Text(
                  'Toshkent',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: Colors.black),
                ),
              ],
            ),
          );
        });
  }
}
