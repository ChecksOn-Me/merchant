import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import './tab.dart';

class ChargeData extends ChangeNotifier {
  // This list will actually be retrieved from Firestore
  List<Tab> _openTabs = [
    Tab(name: 'Kali'),
    Tab(name: 'Ashlee'),
  ];

  UnmodifiableListView<Tab> get openTabs {
    return UnmodifiableListView(_openTabs);
  }

  int get tabCount {
    return _openTabs.length;
  }

  //named tabs are retrieved from Firestore, sent by customer
  void addTab(Tab newTab) {
    _openTabs.add(newTab);
    notifyListeners();
  }

  //guest tabs are temporary tabs opened to charge
  void addGuest(String name, String amount) {
    _openTabs.add(Tab(name: name, amount: amount));
    notifyListeners();
  }

  //user can enter any string to track a guest tab
  void updateName(Tab tab, String newName) {
    tab.editName(newName);
  }

  void updateCharged(Tab tab) {
    tab.toggleCharged();
    notifyListeners();
  }

  void updatePaid(Tab tab) {
    tab.togglePaid();
    notifyListeners();
  }

  void deleteTab(Tab tab) {
    _openTabs.remove(tab);
    notifyListeners();
  }
}
