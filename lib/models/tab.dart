import 'package:flutter/material.dart';

class Tab {
  String name;
  bool isCharged;
  bool isPaid;

  Tab({@required this.name, this.isCharged = false, this.isPaid = false});

  void editName(String newName) {
    name = newName;
  }

  void toggleCharged() {
    isCharged = !isCharged;
  }

  void togglePaid() {
    isPaid = !isPaid;
  }
}
