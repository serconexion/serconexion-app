import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  Widget _submitButton() {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
           'Quiero ofrecer servicios',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
           'Quiero pedir servicios',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

Widget _accountLabel() {
    return InkWell(
      onTap: () {
       Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
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
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
            
           
      body:SingleChildScrollView(
       
        child:Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            decoration: new BoxDecoration(borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).primaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        /*
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                           Text(
                              '¡Únetenos!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900),
                            ),
                          ]
                        ),
                        */ 
                       Image.network('https://i.ibb.co/PWc0tBq/Logo-Ser-Conexion.jpg'),
                       
                       SizedBox(
                         height: 80,
                       ),
                       _signUpButton(),

                       SizedBox(
                         height: 20,
                       ),
                       _submitButton(),
                       
                       SizedBox(
                         height: 80,
                       ),

                       _accountLabel()

                      ],
                    ),
                )
              ],
            ),
          ),
      ),
    );
  }
}
