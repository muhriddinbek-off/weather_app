import 'package:flutter/material.dart';

class RegionName extends ChangeNotifier {
  String _name = 'Samarqand';
  String get newName => _name;
  void getName() {
    _name = newName;
    notifyListeners();
  }
}
