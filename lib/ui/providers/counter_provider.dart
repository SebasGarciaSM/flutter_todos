import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0; //Setter
  int get counter => _counter; //Getter

  void sumCounter() {
    _counter++;
    notifyListeners();
  }
}
