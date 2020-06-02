import 'package:flutter/material.dart';
import '../screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   Widget _password() {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contraseña',
              style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700),
            ),
            
            SizedBox(
              width: 80,
            ),
            const Icon(Icons.vpn_key, size: 18.0, color : Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _mail() {
    return InkWell(
      onTap: () {
        TextField(
              cursorColor: Colors.white,
              cursorWidth: 4,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: '   Contraseña',
                suffixIcon: Icon(Icons.vpn_key, size: 18.0, color : Colors.white),
                
                hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                
              ),
            );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Correo     ',
              style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700),
            ),
            
            SizedBox(
              width: 95,
            ),
            const Icon(Icons.mail, size: 18.0, color : Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _log() {
    return InkWell(
      onTap: () {
        
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
                      Image.network('https://i.ibb.co/PWc0tBq/Logo-Ser-Conexion.jpg'),
                      //Image.asset('../assets/Logo-Ser-Conexion.jpg'),
                       SizedBox(
                         height: 60,
                       ),
                       _mail(),

                       SizedBox(
                         height: 20,
                       ),
                       _password(),
                       SizedBox(
                         height: 20,
                       ),
                       _log(),
                       SizedBox(
                         height: 80,
                       ),

                       _createAccountLabel()

                       
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

