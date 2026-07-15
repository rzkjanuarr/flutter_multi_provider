import 'package:flutter/material.dart';

class HeightProvider with ChangeNotifier {
  // State
  double _height = 40;

  // Getter
  double get height => _height;

  // Setter
  set height(double newValue) {
    _height = newValue;
    notifyListeners();
  }
}
