import 'package:checksonme_merchant/components/input_button.dart';
import 'package:checksonme_merchant/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import '../components/number_button.dart';
import '../screens/home_screen.dart';
import '../screens/new_check_screen.dart';
import '../models/check_data.dart';
// import '../models/charge_data.dart';

class NewChargeScreen extends StatefulWidget {
  static const String id = 'new_charge';

  @override
  _NewChargeScreenState createState() => _NewChargeScreenState();
}

class _NewChargeScreenState extends State<NewChargeScreen> {
  // final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  User loggedInUser;
  bool isDollars = true;
  List<String> _amountEnteredDollars = [];
  List<String> _amountEnteredCents = [];
  String _checkName = 'guest';
  String _location = 'bar';

  void getCurrentUser() {
    final user = _auth.currentUser;
    if (user != null) {
      loggedInUser = user;
      print(loggedInUser.email);
    } else {
      Navigator.pushNamed(context, LoginScreen.id);
    }
  }

  void updateNum(num) {
    if (num == '<') {
      if (isDollars) {
        setState(() {
          _amountEnteredDollars.removeLast();
        });
      } else if (_amountEnteredCents.isEmpty) {
        isDollars = true;
        setState(() {
          _amountEnteredDollars.removeLast();
        });
      } else {
        setState(() {
          _amountEnteredCents.removeLast();
        });
      }
    } else if (isDollars) {
      setState(() {
        _amountEnteredDollars.add(num);
      });
    } else {
      if (_amountEnteredCents.length < 2)
        setState(() {
          _amountEnteredCents.add(num);
        });
    }
    //
  }

  void newCharge() {
    int dollars = int.parse(_amountEnteredDollars.join(''));
    int cents;
    if (_amountEnteredCents.isEmpty) {
      cents = 0;
    } else
      cents = int.parse(_amountEnteredCents.join(''));
    Navigator.pushNamed(
      context,
      NewCheck.id,
      arguments: CheckData(
        name: _checkName,
        location: _location,
        dollars: dollars,
        cents: cents,
        isPaid: false,
      ),
    );
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 55.0,
              width: 200.0,
              color: Colors.white,
              child: _amountEnteredDollars.isEmpty
                  ? Text(
                      '\$0.00',
                      style: TextStyle(fontSize: 35.0),
                    )
                  : Text(
                      '\$${_amountEnteredDollars.join('')}.${_amountEnteredCents.join('')}',
                      style: TextStyle(fontSize: 35.0),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(kNumPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                mainAxisAlignment: MainAxisAlignment.center,
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
                mainAxisAlignment: MainAxisAlignment.center,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberButton(
                    number: '.',
                    onPressed: () {
                      isDollars = false;
                    },
                  ),
                  NumberButton(
                    number: '0',
                    onPressed: () {
                      if (_amountEnteredDollars.isNotEmpty) {
                        updateNum('0');
                      }
                    },
                  ),
                  NumberButton(
                    number: '<',
                    onPressed: () {
                      updateNum('<');
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
                    onPressed: () {
                      newCharge();
                    },
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
