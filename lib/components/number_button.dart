import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class NumberButton extends StatelessWidget {
  NumberButton({@required this.number, @required this.onPressed});

  final String number;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: kLightAccentColorPink,
        shape: CircleBorder(),
        child: MaterialButton(
          minWidth: 100.0,
          height: 42.0,
          color: kDarkAccentColorPink,
          onPressed: onPressed,
          shape: CircleBorder(),
          child: Text(
            number,
            style: TextStyle(fontSize: 75.0),
          ),
          highlightElevation: 1.0,
          elevation: 20.0,
        ),
      ),
    );
  }
}
