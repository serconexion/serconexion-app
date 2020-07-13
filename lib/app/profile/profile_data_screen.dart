import 'package:flutter/material.dart';

class ProfileDataScreen extends StatelessWidget {
  static const String routeName = '/profile-data-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: FittedBox(
          child: Text(
            'Tus Datos',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: <Widget>[
                  this.infoItem(
                      context, Icons.face, "Nombre", "Juan Garcia Pinto"),
                  SizedBox(height: 20),
                  this.infoItem(
                      context, Icons.location_city, "Ciudad", "Bogotá"),
                  SizedBox(height: 20),
                  this.infoItem(context, Icons.card_membership,
                      "Cedula de Ciudadania", "100762433"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoItem(
      BuildContext context, IconData icon, String title, String data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(width: 5),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          data,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
