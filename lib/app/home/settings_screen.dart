import 'package:flutter/material.dart';
import 'package:serconexion_app/app/home/widgets/profile_header.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notifications = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ProfileHeader(text: 'Tu ', boldText: 'Configuración'),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 20, bottom: 40),
                    child: Text(
                      'Selecciona la opcion de la accion que quieres realizar',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Switch.adaptive(
                        value: this.notifications,
                        activeColor: Theme.of(context).primaryColor,
                        onChanged: (value) {
                          setState(() {
                            this.notifications = value;
                          });
                        },
                      ),
                      Text(
                        'Recibir notificaciones',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
