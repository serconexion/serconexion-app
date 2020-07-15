import 'package:flutter/material.dart';
import 'package:serconexion_app/api/services_api.dart';
import 'package:serconexion_app/models/service.dart';

class ServicesProvider with ChangeNotifier {
  final _servicesProvider = ServicesApi();

  List<Service> _services;

  List<Service> get getServices => this._services;

  Future<void> fetchProfile() async {
    await this._servicesProvider.fetchServices();
  }
}
