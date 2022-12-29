import 'package:flutter/cupertino.dart';

class ConuterProvider with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void addCounter() {
    _counter++;
    notifyListeners();
  }
}
