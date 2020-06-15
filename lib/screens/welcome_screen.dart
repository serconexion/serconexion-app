import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';
import 'package:flutter/services.dart';


class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}



class _WelcomeScreenState extends State<WelcomeScreen> {

  Widget boton_cliente(){
    return InkWell(
      onTap: () {
       //ruta a la pagina de cliente
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        //padding: EdgeInsets.symmetric(vertical: 13),
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
              // padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.wc,
                    ),
                  ],
                ),
                title: Text(
                  "Cliente",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Contrata servicios, rápido,\nconfiable",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                
                trailing: Icon(
                      Icons.arrow_forward_ios
                  ),

              ),
            ),
    );
  }

  Widget boton_oferente(){
    return InkWell(
      onTap: () {
        // ruta a la pagina de oferente
      },
      child: Container(
              width: MediaQuery.of(context).size.width,
        //padding: EdgeInsets.symmetric(vertical: 13),
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
              // padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.work,
                    ),
                  ],
                ),
                title: Text(
                  "Oferente",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Ofrece tus servicios y gana\ndinero",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Icon(
                      Icons.arrow_forward_ios
                  ),

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
       // margin: EdgeInsets.symmetric(vertical: 20),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
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
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                        new Image.asset(
                      'assets/isotipo_transpatente.jpg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                        new Image.asset(
                      'assets/Imagen_welcome.jpg'),
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
                        ]),
                  ),
                    ]
                  ),

                ),
                Container( 
                  padding: EdgeInsets.only(top: 20, left: 30, right: 20), 
                  child: Column(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            
                            text: 'Elige como quieres registrarte',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                         height: 15,
                       ),
                  boton_cliente(),
                  SizedBox(
                         height: 10,
                       ),
                  boton_oferente(),
                  SizedBox(
                         height: 10,
                       ),
                  _accountLabel()
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
