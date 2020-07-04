import 'package:flutter/material.dart';

import 'package:serconexion_app/app/home/jobs_screen.dart';
import 'package:serconexion_app/app/home/landing_screen.dart';
import 'package:serconexion_app/app/home/settings_screen.dart';

class TabsScreen extends StatefulWidget {
  static const String routeName = '/tabs';

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  List<Map<String, Object>> _pages = [
    {'page': LandingScreen()},
    {'page': JobsScreen()},
    {'page': SettingsScreen()},
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: _pages[_selectedPageIndex]['page'],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          child: BottomNavigationBar(
            onTap: _selectPage,
            currentIndex: _selectedPageIndex,
            backgroundColor: Theme.of(context).primaryColor,
            fixedColor: Theme.of(context).accentColor,
            iconSize: 40,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.work),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
