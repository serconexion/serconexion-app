import 'package:flutter/material.dart';

import 'package:serconexion_app/app/auth/login_screen.dart';
import 'package:serconexion_app/app/auth/signup_screen_two.dart';
import 'package:serconexion_app/app/auth/widgets/signup_header.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/signup-client-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 0,
              child: Image.asset('assets/images/auth/shape_signup_1.png'),
            ),
            Column(
              children: <Widget>[
                SignUpHeader(1),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SignUpFormOne(),
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
                        Navigator.of(context)
                            .pushNamed(SignUpScreenTwo.routeName);
                      },
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 0, left: 30, right: 20),
                    height: MediaQuery.of(context).size.height * .20,
                    child: Column(children: <Widget>[_accountLabel(context)]))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _accountLabel(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
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
            SizedBox(width: 10),
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

class SignUpFormOne extends StatefulWidget {
  @override
  _SignUpFormOneState createState() => _SignUpFormOneState();
}

class _SignUpFormOneState extends State<SignUpFormOne> {
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
            hintText: 'Nombre',
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
            hintText: 'Repetir contraseña',
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
