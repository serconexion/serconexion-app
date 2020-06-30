import 'package:flutter/material.dart';
import 'package:serconexion_app/app/auth/login_screen.dart';
import 'package:serconexion_app/app/home/landing_screen.dart';

class SignUpScreenTwo extends StatefulWidget {
  SignUpScreenTwo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreenTwo> {

  TextEditingController id_person = TextEditingController();
  TextEditingController address = TextEditingController();

  Widget _register() {
    return InkWell(
      onTap: () {
        //ruta a landing screen
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
              'Registrarse',
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

  Widget _accountLabel() {
    return InkWell(
      onTap: () {
        String getId = id_person.text;
        String getAddress = address.text;   
        // ruta al loginScreen
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

  Widget _textFieldId() {
    return TextField(
              controller: id_person,
              cursorColor: Theme.of(context).accentColor,
              cursorWidth: 4,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Theme.of(context).accentColor,
              ),
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:  Theme.of(context).accentColor, width: 2.0),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Documento de Identidad',
                  
                  hintStyle: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),

                )

              );
  }

  Widget _textFieldAddress() {
    return TextField(
                controller: address, 
                cursorColor: Theme.of(context).accentColor,
                cursorWidth: 4,
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Theme.of(context).accentColor,
              ),
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).accentColor, width: 2.0),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Dirección',
                  suffixIcon: Icon(Icons.mail , color: Theme.of(context).accentColor),
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
                        height: 15,
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        //Icon(Icons.arrow_back_ios),
                        _backButton(),
                        RichText(
                        text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Registro',
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
                   
                    Container(
                      padding: EdgeInsets.only(top: 0, left: 45, right: 20),
                      child: Row(
                        children: <Widget>[
                        RichText(
                        text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Cliente',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ]),
                    ),
                        ]
                      )
                    ),

                    Container(
                      padding: EdgeInsets.only(top: 0, left: 45, right: 20),
                      child: Row(
                        children: <Widget>[
                        RichText(
                        text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Paso 2/2',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                      ]),
                    ),
                        ]
                      )
                    ),

                  ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 30, right: 20),
                  height: MediaQuery.of(context).size.height * .37,
                  child: Column(children: <Widget>[
                    SizedBox(
                        height: 15,
                      ),
                    _textFieldId(),
                    SizedBox(
                        height: 15,
                      ),
                    _textFieldAddress(),
                  ]
                  ),
                ),

                Container(
                padding: EdgeInsets.only(top: 20, left: 30, right: 180),
                  height: MediaQuery.of(context).size.height * .15,
                  child: Column(children: <Widget>[
                    _register(),
                  ]
                  )
              ),

              Container(
                padding: EdgeInsets.only(top: 0, left: 30, right: 20),
                  height: MediaQuery.of(context).size.height * .20,
                  child: Column(children: <Widget>[
                    _accountLabel()
                  ]
                  )
              )
              ]
               )
          ]
        )
      ),
    );
  }
}