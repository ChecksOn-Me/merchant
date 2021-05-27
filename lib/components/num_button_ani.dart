import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class NumberButtonImage extends StatefulWidget {
  NumberButtonImage({@required this.number, @required this.onPressed});

  final String number;
  final Function onPressed;

  @override
  _NumberButtonImageState createState() => _NumberButtonImageState();
}

class _NumberButtonImageState extends State<NumberButtonImage> {
  double _blurOffset = 15.0;

  void _tapDown(TapDownDetails details) {
    widget.onPressed();
    setState(() {
      _blurOffset = 1.0;
    });
  }

  void _tapUp(TapUpDetails details) {
    setState(() {
      _blurOffset = 15.0;
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Container(
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: kDarkBackgroundColor,
                blurRadius: 15.0,
                offset: Offset(_blurOffset, _blurOffset),
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
      ),
    );
  }
}
