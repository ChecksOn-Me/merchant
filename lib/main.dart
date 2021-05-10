import 'package:checksonme_merchant/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/new_charge.dart';
import 'screens/home_screen.dart';
import 'package:provider/provider.dart';
import './models/charge_data.dart';
import './screens/login_screen.dart';
import './screens/new_check_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChecksonMeMerchant());
}

class ChecksonMeMerchant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChargeData(),
      child: MaterialApp(
          title: 'ChecksOn.Me - For Merchants',
          theme: ThemeData(
            primaryColor: kPrimaryColorGreen,
            primaryColorLight: kLightAccentColorGreen,
            primaryColorDark: kDarkAccentColorGreen,
            accentColor: kDarkAccentColorPink,
            highlightColor: kLightAccentColorPink,
            scaffoldBackgroundColor: kPrimaryColorGreen,
          ),
          initialRoute: LoginScreen.id,
          routes: {
            LoginScreen.id: (context) => LoginScreen(),
            NewChargeScreen.id: (context) => NewChargeScreen(),
            HomeScreen.id: (context) => HomeScreen(),
            NewCheck.id: (context) => NewCheck(),
          }),
    );
  }
}
