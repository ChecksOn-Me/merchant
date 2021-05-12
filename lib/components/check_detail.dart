import 'package:flutter/material.dart';

class CheckDetail extends StatelessWidget {
  CheckDetail({
    @required this.detail,
    @required this.value,
  });

  final Text detail;
  final Text value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          this.detail,
          this.value,
        ],
      ),
    );
  }
}
