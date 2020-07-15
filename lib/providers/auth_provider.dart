import 'package:flutter/material.dart';
import 'package:serconexion_app/api/auth_api.dart';

class AuthProvider with ChangeNotifier {
  final _authApi = AuthApi();

  bool _isAuthenticated = false;

  get getIsAuthenticated => this._isAuthenticated;

  Future<void> initAuth() async {}

  Future<void> login(String email, String password) async {
    await this._authApi.login(email: email, password: password);
  }

  Future<void> register({
    String name,
    String email,
    String password,
    String idCard,
    String address,
  }) async {
    await this._authApi.register(
        email: email, password: password, idCard: idCard, address: address);
  }
}
