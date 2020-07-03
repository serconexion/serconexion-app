import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;

  get getIsAuthenticated => this._isAuthenticated;
}
