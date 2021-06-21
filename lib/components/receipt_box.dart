import 'package:flutter/material.dart';

class ReceiptBox extends StatelessWidget {
  ReceiptBox({
    @required this.width,
    @required this.text,
  });

  final double width;
  final Align text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75.0,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2.0,
            style: BorderStyle.solid,
          ),
        ),
        child: text);
  }
}
