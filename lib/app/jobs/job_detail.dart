import 'package:flutter/material.dart';

import 'package:serconexion_app/app/home/tabs_screen.dart';

class JobDetail extends StatelessWidget {
  static String routeName = 'job-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: FittedBox(
          child: Text(
            'Limpieza',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Información del servicio',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
              SizedBox(height: 20),
              this._infoItem(
                context,
                Icons.place,
                'Direccion',
                'Casa Salitre, Carrera 68 #45-54 - Torre 10',
              ),
              SizedBox(height: 20),
              this._infoItem(
                context,
                Icons.event,
                'Fecha',
                'Lunes 28 de Enero, 18:20',
              ),
              SizedBox(height: 20),
              this._infoItem(
                context,
                Icons.face,
                'Oferente',
                'Alejandro Saenz',
              ),
              SizedBox(height: 40),
              Text(
                'Estado',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
              SizedBox(height: 20),
              Text(
                'Pendiente, Sin pagar',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 60),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).accentColor,
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Text(
                  'PRECIO: \$80.000',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 60),
              this._button(
                  context, <Color>[Theme.of(context).accentColor], 'Pagar'),
              SizedBox(
                height: 20,
              ),
              this._button(
                  context, <Color>[Theme.of(context).primaryColor], 'Cancelar'),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  '¿Algún problema?',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoItem(
      BuildContext context, IconData icon, String title, String data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(width: 5),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          data,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  Widget _button(BuildContext context, List<Color> colors, String label) {
    return SizedBox(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(TabsScreen.routeName);
          },
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          color: colors[0],
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
