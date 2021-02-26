import 'package:flutter/material.dart';
import 'constants.dart';

InputDecoration kTextFieldInputDecoration(String hint, Icon inputIcon) {
  return InputDecoration(
    filled: true,
    fillColor: kLightAccentColorPink,
    icon: inputIcon,
    hintText: hint,
    hintStyle: kTextStyleDark,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide.none,
    ),
  );
}
