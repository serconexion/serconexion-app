import 'package:flutter/material.dart';
import 'package:serconexion_app/app/home/widgets/profile_header.dart';
//import 'package:serconexion_app/app/settings/change_password.dart';
//import 'package:serconexion_app/app/settings/change_address.dart';
//import 'package:serconexion_app/app/settings/delete_account.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _changepassword() {
    return InkWell(
      onTap: () {
        /*Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChangePasswordScreen()));*/
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            /*
            SizedBox(
              width: 45,
            ),
            */
            Text(
              'Cambiar Contraseña',
              style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700),
              
            ),
            const Icon(Icons.arrow_forward_ios, size: 18.0, color : Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _changeaddress() {
    return InkWell(
      onTap: () {
        /*Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChangeAddressScreen()));*/
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            /*
            SizedBox(
              width: 45,
            ),
            */
            Text(
              'Cambiar Dirección',
              style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700),
              
            ),
            const Icon(Icons.arrow_forward_ios, size: 18.0, color : Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _deleteaccount() {
    return InkWell(
      onTap: () {
        /*Navigator.push(
            context, MaterialPageRoute(builder: (context) => DeleteAccountScreen()));*/
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            /*
            SizedBox(
              width: 45,
            ),
            */
            Text(
              'Eliminar cuenta',
              style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700),
              
            ),
            const Icon(Icons.arrow_forward_ios, size: 18.0, color : Colors.white),
          ],
        ),
      ),
    );
  }
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ProfileHeader(text: 'Tu ',boldText: 'Configuracion'),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 20, bottom: 40),
                   child: Text(
                      'Selecciona la opcion de la accion que quieres realizar',
                      style: TextStyle(
                       fontWeight: FontWeight.w300,
                       fontSize: 18,
                ),
              ),
            ),

            SizedBox(
                    height: 45,
                  ),
            _changepassword(),

            SizedBox(
                    height: 45,
                  ),

            _changeaddress(),

            SizedBox(
                    height: 45,
                  ),
            _deleteaccount()
            
                ]
              )
            )
          ]
        )
      )
    );
  }
}

