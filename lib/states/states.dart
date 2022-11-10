import 'package:flutter/material.dart';

class States with ChangeNotifier {
  int indexContent = 0;

  void setIndexContent(int index) {
    indexContent = index;
    notifyListeners();
  }
}
