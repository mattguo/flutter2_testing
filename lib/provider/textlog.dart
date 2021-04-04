import 'package:flutter/material.dart';

class TextLog with ChangeNotifier {
  String label = "Ha";
  bool flag = false;

  void setFlag(bool value) {
    label += ":y";
    flag = value;
    notifyListeners();
  }
}
