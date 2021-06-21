import 'package:flutter/material.dart';

class StripesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paintItBlack = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0;
    canvas.drawLine(
      Offset(0, 0),
      Offset(size.width, 0),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(0, size.height * .1),
      Offset(size.width, size.height * .1),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(0, size.height * .2),
      Offset(size.width, size.height * .2),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(0, size.height * .3),
      Offset(size.width, size.height * .3),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(0, size.height * .4),
      Offset(size.width, size.height * .4),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(0, size.height * .5),
      Offset(size.width, size.height * .5),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(0, size.height * .6),
      Offset(size.width, size.height * .6),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(0, size.height * .7),
      Offset(size.width, size.height * .7),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(0, size.height * .8),
      Offset(size.width, size.height * .8),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(0, size.height * .9),
      Offset(size.width, size.height * .9),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width, size.height),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(30, 0),
      Offset(30, size.height),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(260, 0),
      Offset(260, size.height),
      paintItBlack,
    );
    canvas.drawLine(
      Offset(320, 0),
      Offset(320, size.height),
      paintItBlack,
    );
  }

  @override
  bool shouldRepaint(StripesPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(StripesPainter oldDelegate) => false;
}
