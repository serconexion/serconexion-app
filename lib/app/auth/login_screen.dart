import 'package:flutter/material.dart';

import 'package:serconexion_app/app/auth/signup_screen.dart';
import 'package:serconexion_app/app/home/tabs_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login-client-screen';

  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget appBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/auth/shape_login.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SafeArea(
                bottom: false,
                child: Container(
                  height: MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      50,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 40),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                          ),
                        ),
                      ),
                      LoginForm(),
                      this._loginButton(context),
                      this._createAccountLabel(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          color: Theme.of(context).primaryColor,
          child: Text('Login',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )),
          onPressed: () {
            Navigator.of(context).pushNamed(TabsScreen.routeName);
          },
        ),
      ),
    );
  }

  Widget _createAccountLabel(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
            hintText: 'Correo',
            suffixIcon: Icon(Icons.mail, color: Theme.of(context).accentColor),
            hintStyle: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true,
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
            hintText: 'Contraseña',
            suffixIcon:
                Icon(Icons.vpn_key, color: Theme.of(context).accentColor),
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
