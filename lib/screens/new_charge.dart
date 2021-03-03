import 'package:flutter/material.dart';

class NewChargeScreen extends StatefulWidget {
  static const String id = 'new_charge';

  @override
  _NewChargeScreenState createState() => _NewChargeScreenState();
}

class _NewChargeScreenState extends State<NewChargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('New Charges Screen'),
      ),
    );
  }
}
