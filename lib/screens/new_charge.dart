import 'package:checksonme_merchant/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/number_button.dart';

class NewChargeScreen extends StatefulWidget {
  static const String id = 'new_charge';

  @override
  _NewChargeScreenState createState() => _NewChargeScreenState();
}

class _NewChargeScreenState extends State<NewChargeScreen> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  User loggedInUser;

  String amountEntered;

  void getCurrentUser() {
    final user = _auth.currentUser;
    if (user != null) {
      loggedInUser = user;
      print(loggedInUser.email);
    } else {
      Navigator.pushNamed(context, LoadingScreen.id);
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkBackgroundColor,
        title: Text(
          'ChecksOn.Me - NEW CHARGE',
          style: kTextStyleLightPink,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kNumPadding),
            child: Row(
              children: [
                NumberButton(
                  number: '1',
                  onPressed: () {},
                ),
                NumberButton(
                  number: '2',
                  onPressed: () {},
                ),
                NumberButton(
                  number: '3',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kNumPadding),
            child: Row(
              children: [
                NumberButton(
                  number: '4',
                  onPressed: () {},
                ),
                NumberButton(
                  number: '5',
                  onPressed: () {},
                ),
                NumberButton(
                  number: '6',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kNumPadding),
            child: Row(
              children: [
                NumberButton(
                  number: '7',
                  onPressed: () {},
                ),
                NumberButton(
                  number: '8',
                  onPressed: () {},
                ),
                NumberButton(
                  number: '9',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kNumPadding),
            child: Row(
              children: [
                NumberButton(
                  number: '.',
                  onPressed: () {},
                ),
                NumberButton(
                  number: '0',
                  onPressed: () {},
                ),
                NumberButton(
                  number: '#',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
