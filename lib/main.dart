import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:serconexion_app/routes.dart';

import 'package:serconexion_app/providers/auth_provider.dart';

import 'colors/ships_officer.dart';
import 'colors/georgia_peach.dart';

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
        builder: (ctx, authData, _) => MaterialApp(
          title: 'Serconexion',
          theme: ThemeData(
            primarySwatch: georgiaPeach,
            accentColor: shipsOfficer,
            fontFamily: 'Roboto',
            textTheme: ThemeData.light().textTheme.copyWith(),
          ),
          debugShowCheckedModeBanner: false,
          home: WelcomeScreen(),
          routes: Router.routes,
        ),
      ),
    );
  }
}
