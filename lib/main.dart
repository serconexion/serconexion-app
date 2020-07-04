import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:serconexion_app/routes.dart';

import 'package:serconexion_app/providers/auth_provider.dart';

import 'package:serconexion_app/app/home/landing_screen.dart';
import 'package:serconexion_app/colors/ships_officer.dart';
import 'package:serconexion_app/colors/georgia_peach.dart';

import 'package:serconexion_app/app/landing/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => AuthProvider(),
        )
      ],
      child: Consumer<AuthProvider>(
        builder: (BuildContext ctx, AuthProvider authState, Widget _) =>
            MaterialApp(
          title: 'Serconexion',
          theme: ThemeData(
            primarySwatch: georgiaPeach,
            primaryColorBrightness: Brightness.light,
            accentColor: shipsOfficer,
            accentColorBrightness: Brightness.dark,
            fontFamily: 'Roboto',
            textTheme: ThemeData.light().textTheme.copyWith(),
          ),
          home:
              authState.getIsAuthenticated ? LandingScreen() : WelcomeScreen(),
          routes: Router.routes,
        ),
      ),
    );
  }
}
