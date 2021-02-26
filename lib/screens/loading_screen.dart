import 'package:checksonme_merchant/utilities/constants.dart';
import 'package:flutter/material.dart';
import '../utilities/input_decorations.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
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
      body: Container(
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
                style: kTextStyleDark,
                decoration: kTextFieldInputDecoration(
                  'username',
                  Icon(Icons.login_rounded, color: kLightAccentColorPink),
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: kTextStyleDark,
                decoration: kTextFieldInputDecoration(
                  'password',
                  Icon(Icons.lock_rounded, color: kLightAccentColorPink),
                ),
                onChanged: (value) {},
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: kTextStyleBrightWhite,
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(kDarkAccentColorGreen),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
