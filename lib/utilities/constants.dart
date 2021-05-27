import 'package:flutter/material.dart';

const kPrimaryColorGreen = Color(0xFFDAEBC7);
const kPrimaryColorGreenTrans = Color(0x00DAEBC7);
const kPrimaryColorBrightGreen = Color(0xFFD2FBA4);
const kDarkAccentColorGreen = Color(0xFF1D741B);
const kLightAccentColorGreen = Color(0xFF5EB229);
const kDarkAccentColorPink = Color(0xFFFF6260);
const kLightAccentColorPink = Color(0xFFFFCBC4);
const kDarkGreenTextColor = Color(0xFF343D29);
const kDarkBackgroundColor = Color(0xFF1B1A1A);

const kTextStyleDark = TextStyle(
  color: kDarkGreenTextColor,
);

const kTextStyleLightPink = TextStyle(
  color: kLightAccentColorPink,
);

const kTextStyleDarkPink = TextStyle(
  color: kDarkAccentColorPink,
);

const kTextStyleLightGreen = TextStyle(
  color: kLightAccentColorGreen,
);

const kTextStyleBrightWhite = TextStyle(
  color: Colors.white,
);

const kTextStyleCheckDetails = TextStyle(
  color: kDarkGreenTextColor,
  fontSize: 25.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: kLightAccentColorPink,
  icon: Icon(Icons.add),
  hintText: 'Add text',
  hintStyle: kTextStyleDark,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const double kNumPadding = 15.0;
