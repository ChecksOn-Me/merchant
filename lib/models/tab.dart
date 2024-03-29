import 'package:flutter/material.dart';

class Tab {
  String name;
  bool isCharged;
  bool isPaid;
  String amount;

  Tab({
    @required this.name,
    this.isCharged = false,
    this.isPaid = false,
    this.amount = '0.00',
  });

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
