import 'package:flutter/material.dart';

class CheckData {
  String name;
  String location;
  String dollars;
  String cents;
  bool isPaid;

  CheckData({
    this.name = 'guest',
    this.location = 'bar',
    @required this.dollars,
    @required this.cents,
    this.isPaid = false,
  });
}
