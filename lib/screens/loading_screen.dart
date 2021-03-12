import 'package:checksonme_merchant/utilities/constants.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  static const String id = 'loading';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
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
            ],
          ),
        ),
      ),
    );
  }
}
