import 'dart:collection';

import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _counte = 0;

  final List<String> _items = [
    'Mango',
    'Orange',
    'Grapes',
    'Banana',
    'Chery',
    'Peach',
    'Mixed ',
  ];
  UnmodifiableListView<String> get items => UnmodifiableListView(_items);

  void add(String item) {
    _items.add(item);
    notifyListeners();
  }

  int get getCounter {
    return _counte;
  }

  void incrementCounter() {
    _counte += 1;
    notifyListeners();
  }
}
