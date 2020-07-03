import 'package:flutter/material.dart';

import 'package:serconexion_app/app/auth/login_screen.dart';
import 'package:serconexion_app/app/auth/signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = '/welcome-screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Widget _accountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
      child: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '¿Ya tienes una cuenta?',
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
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                color: Theme.of(context).primaryColor,
              ),
              height: MediaQuery.of(context).size.height * .60,
              padding: EdgeInsets.only(top: 20, left: 30, right: 20),
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Image.asset('assets/images/branding/logo_black.png'),
                      ],
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset('assets/images/landing/landing.png'),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Bienvenido a la ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                            ),
                          ),
                          TextSpan(
                            text: 'plataforma de servicios',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 30, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Elige como quieres registrarte',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 15),
                  this._typeBox(
                    title: 'Cliente',
                    description: 'Contrata servicios, rápido, confiable',
                    image: 'assets/images/landing/client.png',
                  ),
                  SizedBox(height: 10),
                  this._typeBox(
                    title: 'Oferente',
                    description: 'Ofrece tus servicios y gana dinero',
                    image: 'assets/images/landing/worker.png',
                  ),
                  SizedBox(height: 10),
                  this._accountLabel(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _typeBox({String title, String description, String image}) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SignUpScreen.routeName);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
            )
          ],
        ),
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 13, 15, 13),
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border:
                  Border.all(width: 0.6, color: Theme.of(context).accentColor),
            ),
            padding: EdgeInsets.all(6),
            child: Image.asset(image),
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            description,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
