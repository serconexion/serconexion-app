import 'package:flutter/material.dart';
import 'package:serconexion_app/app/auth/login_screen.dart';
import 'package:serconexion_app/app/auth/signup_screen.dart';
import 'package:serconexion_app/app/auth/signup_screen_two.dart';
import 'package:serconexion_app/app/home/profile_screen.dart';
import 'package:serconexion_app/app/home/tabs_screen.dart';

class Router {
  static final Map<String, Widget Function(BuildContext)> routes = {
    // Home Screens
    TabsScreen.routeName: (ctx) => TabsScreen(),

    // Profile Screens
    ProfileScreen.routeName: (ctx) => ProfileScreen(),

    // Auth Screens
    LoginScreen.routeName: (ctx) => LoginScreen(),
    SignUpScreen.routeName: (ctx) => SignUpScreen(),
    SignUpScreenTwo.routeName: (ctx) => SignUpScreenTwo(),
  };
}
