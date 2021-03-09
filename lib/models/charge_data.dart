import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import './tab.dart';

class ChargeData extends ChangeNotifier {
  List<Tab> _openTabs = [Tab(name: 'Kali'), Tab(name: 'Ashlee')];

  UnmodifiableListView<Tab> get openTabs {
    return UnmodifiableListView(_openTabs);
  }

  int get tabCount {
    return _openTabs.length;
  }

  void addTab(Tab newTab) {
    _openTabs.add(newTab);
    notifyListeners();
  }

  void updateTab(Tab tab) {
    tab.togglePaid();
    notifyListeners();
  }

  void deleteTab(Tab tab) {
    _openTabs.remove(tab);
    notifyListeners();
  }
}
