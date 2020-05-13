import 'package:flutter/material.dart';

import 'colors/ships_officer.dart';
import 'colors/georgia_peach.dart';

import 'screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serconexion',
      theme: ThemeData(
        primarySwatch: georgiaPeach,
        accentColor: shipsOfficer,
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(),
      ),
      home: TabsScreen(),
    );
  }
}
