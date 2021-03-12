// import 'package:checksonme_merchant/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import '../screens/new_charge.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../screens/login_screen.dart';

class Authenticate extends StatelessWidget {
  static const id = 'authenticate';

  @override
  Widget build(BuildContext context) {
    //Instance to know the authentication state.
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      //Means that the user is logged in already and hence navigate to HomePage
      return NewChargeScreen();
    }
    //The user isn't logged in and hence navigate to SignInPage.
    return LoginScreen();
  }
}
