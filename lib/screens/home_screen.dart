import 'package:checksonme_merchant/screens/new_charge.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Some kind of home screen',
      style: optionStyle,
    ),
    Text(
      'Some kind of reports screen',
      style: optionStyle,
    ),
    Text(
      'Some kind of open tabs screen',
      style: optionStyle,
    ),
    Text(
      'Some kind of settings screen',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.pushNamed(context, NewChargeScreen.id);
              }),
        ],
        title: Text(
          'ChecksOn.Me - HOME',
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: kLightAccentColorGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet_outlined),
            label: 'Reports',
            backgroundColor: kLightAccentColorGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.request_quote_outlined),
            label: 'Open Tabs',
            backgroundColor: kLightAccentColorGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: kLightAccentColorGreen,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kLightAccentColorPink,
        onTap: _onItemTapped,
      ),
    );
  }
}
