import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _usernameString = '';
  String get usernameString => _usernameString;
  set usernameString(String value) {
    _usernameString = value;
  }

  String _emailString = '';
  String get emailString => _emailString;
  set emailString(String value) {
    _emailString = value;
  }
}
