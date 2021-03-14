import 'package:checksonme_merchant/screens/new_charge.dart';
import 'package:checksonme_merchant/services/login_register.dart';
import 'package:checksonme_merchant/utilities/constants.dart';
import 'package:flutter/material.dart';
import '../components/input_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'loading';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  void loginCheck() {
    _auth.authStateChanges().listen((User user) {
      if (user != null) Navigator.pushNamed(context, NewChargeScreen.id);
    });
  }

  @override
  void initState() {
    super.initState();
    loginCheck();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkBackgroundColor,
        title: Text(
          'ChecksOn.Me',
          style: kTextStyleLightPink,
        ),
      ),
      backgroundColor: kDarkBackgroundColor,
      body: ListView(
        reverse: true,
        children: [
          Image.asset(
            'assets/images/beerpour300sq.gif',
            fit: BoxFit.contain,
          ),
          Text(
            'Please wait... pouring in progress',
            textAlign: TextAlign.center,
            style: kTextStyleLightPink,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              textAlign: TextAlign.center,
              style: kTextStyleDark,
              decoration: kTextFieldInputDecoration.copyWith(
                hintText: 'email',
                icon: Icon(Icons.login_rounded, color: kLightAccentColorPink),
              ),
              onChanged: (value) {
                email = value;
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              style: kTextStyleDark,
              decoration: kTextFieldInputDecoration.copyWith(
                hintText: 'password',
                icon: Icon(Icons.lock_rounded, color: kLightAccentColorPink),
              ),
              onChanged: (value) {
                password = value;
              },
            ),
          ),
          InputButton(
            text: 'Login or Register',
            onPressed: () {
              final session = LoginOrRegister(
                email: email,
                password: password,
                context: context,
              );
              session.login();
              print('last step');
            },
          ),
        ].reversed.toList(),
      ),
    );
  }
}
