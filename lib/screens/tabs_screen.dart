import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';
import '../screens/services_detail_screen.dart';
import '../screens/landing_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();

    _pages = [
      {'page': LandingScreen()},
      {'page': ServicesDetailScreen()},
      {'page': SettingsScreen()},
    ];
  }

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
        bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
