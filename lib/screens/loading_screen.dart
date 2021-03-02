import 'package:checksonme_merchant/services/login_register.dart';
import 'package:checksonme_merchant/utilities/constants.dart';
import 'package:flutter/material.dart';
import '../components/input_button.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String email;
  String password;

  @override
  void initState() {
    super.initState();
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
      body: SingleChildScrollView(
        child: Container(
          color: kDarkBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    icon:
                        Icon(Icons.login_rounded, color: kLightAccentColorPink),
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
                    icon:
                        Icon(Icons.lock_rounded, color: kLightAccentColorPink),
                  ),
                  onChanged: (value) {
                    password = value;
                  },
                ),
              ),
              InputButton(
                text: 'Login or Register',
                onPressed: () {
                  final session =
                      LoginOrRegister(email: email, password: password);
                  session.login();
                  print('last step');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
