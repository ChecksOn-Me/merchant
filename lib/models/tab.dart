import 'package:flutter/material.dart';

class Tab {
  final String name;
  bool isPaid;

  Tab({@required this.name, this.isPaid = false});

  void togglePaid() {
    isPaid = !isPaid;
  }
}
