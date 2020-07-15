import 'package:flutter/material.dart';
import 'package:serconexion_app/api/user_api.dart';
import 'package:serconexion_app/models/user.dart';

class UserProvider with ChangeNotifier {
  final _userApi = UserApi();

  User _user;

  User get getUser => this._user;

  Future<void> fetchProfile() async {
    await this._userApi.fetchProfile();
  }
}
