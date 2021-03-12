import 'package:checksonme_merchant/components/input_button.dart';
import 'package:checksonme_merchant/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../components/number_button.dart';
import '../screens/home_screen.dart';
// import 'package:provider/provider.dart';
// import '../models/charge_data.dart';

class NewChargeScreen extends StatefulWidget {
  static const String id = 'new_charge';

  @override
  _NewChargeScreenState createState() => _NewChargeScreenState();
}
//TODO: #6 Figure out a way to limit input to two decimals

class _NewChargeScreenState extends State<NewChargeScreen> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  User loggedInUser;
  List<String> _amountEntered = [];

  void getCurrentUser() {
    final user = _auth.currentUser;
    if (user != null) {
      loggedInUser = user;
      print(loggedInUser.email);
    } else {
      Navigator.pushNamed(context, LoadingScreen.id);
    }
  }

  void updateNum(num) {
    setState(() {
      _amountEntered.add(num);
    });
    print(_amountEntered);
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
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.id);
              }),
        ],
        title: Text(
          'ChecksOn.Me - NEW CHARGE',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 55.0,
              width: 200.0,
              color: Colors.white,
              child: _amountEntered.isEmpty
                  ? Text(
                      '\$0.00',
                      style: TextStyle(fontSize: 35.0),
                    )
                  : Text(
                      '\$${_amountEntered.join('')}',
                      style: TextStyle(fontSize: 35.0),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(kNumPadding),
              child: Row(
                children: [
                  NumberButton(
                    number: '1',
                    onPressed: () {
                      updateNum('1');
                    },
                  ),
                  NumberButton(
                    number: '2',
                    onPressed: () {
                      updateNum('2');
                    },
                  ),
                  NumberButton(
                    number: '3',
                    onPressed: () {
                      updateNum('3');
                    },
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
                    onPressed: () {
                      updateNum('4');
                    },
                  ),
                  NumberButton(
                    number: '5',
                    onPressed: () {
                      updateNum('5');
                    },
                  ),
                  NumberButton(
                    number: '6',
                    onPressed: () {
                      updateNum('6');
                    },
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
                    onPressed: () {
                      updateNum('7');
                    },
                  ),
                  NumberButton(
                    number: '8',
                    onPressed: () {
                      updateNum('8');
                    },
                  ),
                  NumberButton(
                    number: '9',
                    onPressed: () {
                      updateNum('9');
                    },
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
                    onPressed: () {
                      updateNum('.');
                    },
                  ),
                  NumberButton(
                    number: '0',
                    onPressed: () {
                      updateNum('0');
                    },
                  ),
                  NumberButton(
                    number: '<',
                    onPressed: () {
                      setState(() {
                        _amountEntered.removeLast();
                      });
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InputButton(
                    text: 'Charge \n Tab',
                    onPressed: () {},
                    height: 100.0,
                    width: 125.0,
                  ),
                ),
                Expanded(
                  child: InputButton(
                    text: 'New \n Charge',
                    onPressed: () {},
                    height: 100.0,
                    width: 125.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
