import 'package:flutter/material.dart';
// import '../utilities/constants.dart';
import '../models/check_data.dart';
import '../screens/home_screen.dart';

class NewCheck extends StatelessWidget {
  static const String id = 'new_check';

  @override
  Widget build(BuildContext context) {
    final CheckData check =
        ModalRoute.of(context).settings.arguments as CheckData;
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
        body: Container(
          child: Text('${check.dollars}, ${check.cents}'),
        ));
  }
}
