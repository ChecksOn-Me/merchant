import 'package:flutter/material.dart';

class CheckData {
  String storeID;
  String checkNumber;
  String name;
  String location;
  String dollars;
  String cents;
  bool isPaid;

  CheckData({
    @required this.storeID,
    this.checkNumber,
    this.name = 'guest',
    this.location = 'bar',
    @required this.dollars,
    @required this.cents,
    this.isPaid = false,
  });
}
