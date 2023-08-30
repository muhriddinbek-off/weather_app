import 'package:flutter/material.dart';

class SettingsPart extends StatelessWidget {
  final String title;
  final IconData iconName;
  final Function() ontap;
  const SettingsPart({
    super.key,
    required this.iconName,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListTile(
        onTap: ontap,
        leading: Icon(iconName, size: 35),
        title: Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black54),
        ),
      ),
    );
  }
}
