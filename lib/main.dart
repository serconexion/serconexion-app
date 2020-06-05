import 'package:flutter/material.dart';
import 'package:serconexion_app/screens/signup_screen.dart';
import 'package:serconexion_app/screens/welcome_screen.dart';
import 'package:serconexion_app/screens/splash_screen.dart';
import 'colors/ships_officer.dart';
import 'colors/georgia_peach.dart';

import 'screens/tabs_screen.dart';
import 'screens/login_screen.dart';

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
      debugShowCheckedModeBanner: false,
      home:   SplashScreen(),
    );
  }
}
