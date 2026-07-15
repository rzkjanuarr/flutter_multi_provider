import 'package:flutter/material.dart';

class WeightProvider with ChangeNotifier {
  // State
  double _weight = 40;

  // Getter
  double get weight => _weight;

  // Setter
  set weight(double newValue) {
    _weight = newValue;
    notifyListeners();
  }
}
