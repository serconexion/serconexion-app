import 'package:flutter/material.dart';
import 'package:serconexion_app/app/landing/welcome_screen.dart';
import 'package:serconexion_app/app/profile/profile_data_screen.dart';
import 'package:serconexion_app/app/profile/profile_dynamic_list_screen.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = '/profile-screen';

  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  final places = [
    {'header': 'Casa Salitre', 'subtitle': 'Kr 68 #32-21'},
    {'header': 'Oficina Chapinero', 'subtitle': 'Kr 7 #14-30'}
  ];
  final creditCards = [
    {'header': 'Master Card', 'subtitle': '5345-234534-343'},
    {'header': 'Visa', 'subtitle': '2003-123423-423'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1496493012404-97903cd749a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
                      ),
                      radius: 100,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: Text(
                        'Juan Garcia Pinto',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    this._profileItem(
                      icon: Icons.place,
                      text: 'Tus Lugares',
                      routeName: ProfileDynamicListScreen.routeName,
                      routeArguments: {
                        'type': 'Lugar',
                        'title': 'Tus Lugares',
                        'data': this.places,
                      },
                    ),
                    this._profileItem(
                      icon: Icons.credit_card,
                      text: 'Tus Tarjetas de Credito',
                      routeName: ProfileDynamicListScreen.routeName,
                      routeArguments: {
                        'type': 'Tarjeta de Credito',
                        'title': 'Tus Tarjetas de Credito',
                        'data': this.creditCards,
                      },
                    ),
                    this._profileItem(
                      icon: Icons.person_outline,
                      text: 'Tus Datos',
                      routeName: ProfileDataScreen.routeName,
                    ),
                    this._profileItem(
                      icon: Icons.exit_to_app,
                      text: 'Cerrar Sesión',
                      isLogout: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileItem({
    @required IconData icon,
    @required String text,
    String routeName,
    Map routeArguments,
    bool isLogout = false,
  }) {
    return InkWell(
      onTap: () {
        if (isLogout) {
          Navigator.of(context).pushReplacementNamed(WelcomeScreen.routeName);
        } else {
          Navigator.of(context).pushNamed(routeName, arguments: routeArguments);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isLogout
              ? Theme.of(context).primaryColor
              : Theme.of(context).accentColor,
        ),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        margin: EdgeInsets.only(top: 10),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
