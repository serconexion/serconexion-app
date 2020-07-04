import 'package:flutter/material.dart';

import 'package:serconexion_app/app/auth/login_screen.dart';
import 'package:serconexion_app/app/auth/widgets/signup_header.dart';
import 'package:serconexion_app/app/home/tabs_screen.dart';

class SignUpScreenTwo extends StatefulWidget {
  static const String routeName = '/signup-screen-two';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/auth/shape_signup_2.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                SignUpHeader(2),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: SignUpFormTwo(),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  alignment: Alignment.centerLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      color: Theme.of(context).primaryColor,
                      child: Text('Siguiente Paso',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      onPressed: () {
                        Navigator.of(context).pushNamed(TabsScreen.routeName);
                      },
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 0, left: 30, right: 20),
                    height: MediaQuery.of(context).size.height * .20,
                    child: Column(children: <Widget>[this._accountLabel()]))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _accountLabel() {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(LoginScreen.routeName);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(0),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '¿Ya tienes cuenta?',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Ingresa',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpFormTwo extends StatefulWidget {
  @override
  _SignUpFormTwoState createState() => _SignUpFormTwoState();
}

class _SignUpFormTwoState extends State<SignUpFormTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          cursorColor: Theme.of(context).accentColor,
          cursorWidth: 4,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Theme.of(context).accentColor,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).accentColor, width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Documento de Identidad',
            hintStyle: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          cursorColor: Theme.of(context).accentColor,
          cursorWidth: 4,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Theme.of(context).accentColor,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).accentColor, width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Dirección',
            hintStyle: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
