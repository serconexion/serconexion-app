import 'package:flutter/material.dart';
import 'package:serconexion_app/app/auth/login_screen.dart';
import 'package:serconexion_app/app/auth/signup_screen.dart';
import 'package:serconexion_app/app/auth/signup_screen_two.dart';
import 'package:serconexion_app/app/jobs/job_detail.dart';
import 'package:serconexion_app/app/jobs/job_preview.dart';
import 'package:serconexion_app/app/landing/welcome_screen.dart';
import 'package:serconexion_app/app/profile/profile_screen.dart';
import 'package:serconexion_app/app/home/tabs_screen.dart';
import 'package:serconexion_app/app/services/searching_service_screen.dart';
import 'package:serconexion_app/app/services/services_detail_screen.dart';

class Router {
  static final Map<String, Widget Function(BuildContext)> routes = {
    // Welcome Screen
    WelcomeScreen.routeName: (ctx) => WelcomeScreen(),

    // Home Screens
    TabsScreen.routeName: (ctx) => TabsScreen(),

    // Services
    ServicesDetailScreen.routeName: (ctx) => ServicesDetailScreen(),
    SearchingServiceScreen.routeName: (ctx) => SearchingServiceScreen(),

    // Jobs
    JobPreview.routeName: (ctx) => JobPreview(),
    JobDetail.routeName: (ctx) => JobDetail(),

    // Profile Screens
    ProfileScreen.routeName: (ctx) => ProfileScreen(),

    // Auth Screens
    LoginScreen.routeName: (ctx) => LoginScreen(),
    SignUpScreen.routeName: (ctx) => SignUpScreen(),
    SignUpScreenTwo.routeName: (ctx) => SignUpScreenTwo(),
  };
}
