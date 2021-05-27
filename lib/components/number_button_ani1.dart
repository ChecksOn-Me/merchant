import 'package:flutter/material.dart';
import '../utilities/constants.dart';
// import 'dart:async';

class NumberButtonImage extends StatefulWidget {
  NumberButtonImage({@required this.number, @required this.onPressed});

  final String number;
  final Function onPressed;

  @override
  _NumberButtonImageState createState() => _NumberButtonImageState();
}

class _NumberButtonImageState extends State<NumberButtonImage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double _scale;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
      lowerBound: 0.0,
      upperBound: 1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _tapDown(TapDownDetails details) {
    widget.onPressed();
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }

  Widget build(BuildContext context) {
    Padding aniButton = Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        height: 85,
        width: 85,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kDarkBackgroundColor,
              blurRadius: 15.0,
              offset: Offset(15.0, 15.0),
            ),
          ],
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/images/buttons/key2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            widget.number,
            style: TextStyle(
              fontSize: 65.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
    _scale = 1 - _controller.value;

    return GestureDetector(
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      child: Transform.scale(
        scale: _scale,
        child: aniButton,
      ),
    );
  }
}
