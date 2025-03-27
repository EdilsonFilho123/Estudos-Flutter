import 'package:flutter/material.dart';

class DefaultChangeNotifier extends ChangeNotifier {
  String? _message;
  String? get message => _message;
  DefaultChangeNotifierState _state = DefaultChangeNotifierState.init;
  DefaultChangeNotifierState get state => _state;

  void setStateAndNotify(DefaultChangeNotifierState state, [String? message]) {
    if(setState(state, message)) notifyListeners();
  }

  bool setState(DefaultChangeNotifierState state, [String? message]) {
    if (_message == message && _state == state) return false;

    _message = message;
    _state = state;

    return true;
  }
}

enum DefaultChangeNotifierState { init, sucess, error, loading, message, ok }
