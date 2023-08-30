import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String text1;
  final String text2;
  final double top;
  final double bottom;
  const TextTitle({
    super.key,
    required this.text1,
    required this.text2,
    required this.top,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, top: top, right: 25, bottom: bottom),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1, style: const TextStyle(fontSize: 20, color: Colors.white54, fontWeight: FontWeight.w400)),
          Text(text2, style: const TextStyle(fontSize: 20, color: Colors.white54, fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
