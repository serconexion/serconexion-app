import 'package:flutter/material.dart';
import 'package:serconexion_app/app/home/landing_screen.dart';
import 'package:serconexion_app/app/auth/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-client-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _log() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LandingScreen()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ingresa',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '¿No tienes cuenta?',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Registrate',
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

  Widget _textFieldLogin() {
    return TextField(
        cursorColor: Theme.of(context).accentColor,
        cursorWidth: 4,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Theme.of(context).accentColor,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).accentColor, width: 2.0),
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: 'Correo',
          suffixIcon: Icon(Icons.mail, color: Theme.of(context).accentColor),
          hintStyle: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ));
  }

  Widget _textFieldPassword() {
    return TextField(
      obscureText: true,
      cursorColor: Theme.of(context).accentColor,
      cursorWidth: 4,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Theme.of(context).accentColor,
      ),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).accentColor, width: 2.0),
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Contraseña',
        suffixIcon: Icon(Icons.vpn_key, color: Theme.of(context).accentColor),
        hintStyle: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 18,
            fontWeight: FontWeight.w700),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20, left: 30, right: 20),
                  height: MediaQuery.of(context).size.height * .20,
                  child: Column(children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        //Icon(Icons.arrow_back_ios),
                        _backButton()
                      ],
                    ),
                  ]),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 30, right: 20),
                  height: MediaQuery.of(context).size.height * .37,
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    _textFieldLogin(),
                    SizedBox(height: 15),
                    _textFieldPassword(),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                ),
                Container(
                    padding: EdgeInsets.only(top: 20, left: 30, right: 200),
                    height: MediaQuery.of(context).size.height * .15,
                    child: Column(children: <Widget>[
                      _log(),
                    ])),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 30, right: 20),
                  height: MediaQuery.of(context).size.height * .20,
                  child: Column(
                    children: <Widget>[
                      _createAccountLabel(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
