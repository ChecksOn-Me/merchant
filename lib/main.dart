import 'package:checksonme_merchant/screens/loading_screen.dart';
import 'package:checksonme_merchant/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChecksonMeMerchant());
}

class ChecksonMeMerchant extends StatelessWidget {
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

      //TODO #1: CREATE NEXT SCREEN
      //TODO #2: ENTER ROUTES
    );
  }
}
