import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String text1;
  final String text2;
  const TextTitle({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 40, right: 25, bottom: 30),
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
