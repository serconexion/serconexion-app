import 'package:flutter/material.dart';
import 'package:serconexion_app/app/jobs/job_detail.dart';
import 'package:serconexion_app/app/services/searching_service_screen.dart';

class JobPreview extends StatelessWidget {
  static const routeName = '/job-preview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: RaisedButton(
                onPressed: () async {
                  Navigator.of(context)
                      .pushReplacementNamed(SearchingServiceScreen.routeName);

                  await Future.delayed(Duration(seconds: 5));

                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(JobPreview.routeName);
                },
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                color: Theme.of(context).accentColor,
                child: Text(
                  'Buscar Otro',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(width: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(JobDetail.routeName);
                },
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Aceptar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width / 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1592980188199-04c319ca08aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=684&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      'Valentina Alvarez',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 20),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).accentColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('Calificacion: 4/5'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('Experiencia: 2 años'),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Precio',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '\$50.000',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Información del oferente',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Edad:',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  Text('25 años'),
                  SizedBox(height: 15),
                  Text(
                    'Sexo:',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  Text('Femenino'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
