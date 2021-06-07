import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class InputButton extends StatelessWidget {
  InputButton(
      {@required this.text,
      @required this.onPressed,
      this.width: 150.0,
      this.height: 30.0});

  final String text;
  final Function onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        autofocus: true,
        onPressed: onPressed,
        child: Text(
          text,
          style: kTextStyleBrightWhite,
          textAlign: TextAlign.center,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kDarkAccentColorGreen),
          minimumSize: MaterialStateProperty.all(Size(width, height)),
          elevation: MaterialStateProperty.all(10.0),
        ),
      ),
    );
  }
}
