import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class InputButton extends StatelessWidget {
  InputButton({@required this.text, @required this.onPressed});

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: kTextStyleBrightWhite,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kDarkAccentColorGreen),
      ),
    );
  }
}
