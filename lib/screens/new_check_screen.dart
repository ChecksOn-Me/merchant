import 'package:checksonme_merchant/components/input_button.dart';
import 'package:checksonme_merchant/utilities/constants.dart';
import 'package:flutter/material.dart';
import '../models/check_data.dart';
import '../screens/home_screen.dart';
import '../components/check_detail.dart';

class NewCheck extends StatefulWidget {
  static const String id = 'new_check';

  @override
  _NewCheckState createState() => _NewCheckState();
}

class _NewCheckState extends State<NewCheck> {
  @override
  Widget build(BuildContext context) {
    final CheckData check =
        ModalRoute.of(context).settings.arguments as CheckData;
    final String name = check.name;
    final String location = check.location;
    final String dollars = check.dollars.toString();
    final String cents = check.cents == 0 ? '00' : check.cents.toString();

    void confirmCharge = () {
      print('confirm');
    };

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
          'ChecksOn.Me - CHECK',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Check Details',
              textAlign: TextAlign.center,
              style: kTextStyleDark.copyWith(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.edit,
                color: kDarkAccentColorPink,
              ),
              label: Text(
                'Edit Check Details',
                style: kTextStyleDarkPink,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: kLightAccentColorPink,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [BoxShadow(blurRadius: 10.0)],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CheckDetail(
                    detail: Text(
                      'Check Amount:',
                      style: kTextStyleCheckDetails,
                    ),
                    value: Text(
                      '\$$dollars.$cents',
                      style: kTextStyleCheckDetails,
                    ),
                  ),
                  CheckDetail(
                    detail: Text(
                      'Check Name:',
                      style: kTextStyleCheckDetails,
                    ),
                    value: Text(
                      '$name',
                      style: kTextStyleCheckDetails,
                    ),
                  ),
                  CheckDetail(
                    detail: Text(
                      'Location:',
                      style: kTextStyleCheckDetails,
                    ),
                    value: Text(
                      '$location',
                      style: kTextStyleCheckDetails,
                    ),
                  ),
                  CheckDetail(
                    detail: Text(
                      'Check Status:',
                      style: kTextStyleCheckDetails,
                    ),
                    value: Text(
                      check.isPaid ? 'paid' : 'unpaid',
                      style: kTextStyleCheckDetails,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InputButton(
            text: 'Confirm and \n Create Check',
            onPressed: () => confirmCharge,
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
