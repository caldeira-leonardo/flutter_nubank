import 'package:flutter/material.dart';

class ShowAndHideAmountContext extends ChangeNotifier {
  bool _isValueVisible = true;

  void switchShowVisible() {
    if (_isValueVisible) {
      _isValueVisible = false;
    } else {
      _isValueVisible = true;
    }
    notifyListeners();
  }

  bool get isVisible => _isValueVisible;
}
