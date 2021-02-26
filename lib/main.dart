import 'package:checksonme_merchant/screens/loading_screen.dart';
import 'package:checksonme_merchant/utilities/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChecksOn.Me - For Merchants',
      theme: ThemeData(
        primaryColor: kPrimaryColorGreen,
        primaryColorLight: kLightAccentColorGreen,
        primaryColorDark: kDarkAccentColorGreen,
        accentColor: kDarkAccentColorPink,
        highlightColor: kLightAccentColorPink,
        scaffoldBackgroundColor: kPrimaryColorGreen,
      ),
      home: LoadingScreen(),
    );
  }
}
