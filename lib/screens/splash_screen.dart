import 'package:flutter/material.dart';
import '../screens/welcome_screen.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget {
  SplashScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen())));
  }


  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                       radius: 70,
                       backgroundImage: AssetImage(
                      'assets/Logo2-Ser-Conexion.jpg'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                    ],
                  ),
                ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
