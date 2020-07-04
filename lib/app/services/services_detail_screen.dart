import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:serconexion_app/app/services/searching_service_screen.dart';
import 'package:serconexion_app/app/services/widgets/filter_item.dart';

class ServicesDetailScreen extends StatefulWidget {
  static const String routeName = '/service-detail-screen';

  @override
  _ServicesDetailScreenState createState() => _ServicesDetailScreenState();
}

class _ServicesDetailScreenState extends State<ServicesDetailScreen> {
  Map _formState = {
    'sex': null,
    'age': {
      'min': null,
      'max': null,
    },
    'rating': {
      'min': null,
      'max': null,
    }
  };

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> args =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final String serviceName = args['serviceName'];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: FittedBox(
          child: Text(
            serviceName,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 40),
              child: Text(
                'Seleccione filtros para el emparejamiento con un oferente o deje los espacios en blanco',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  FilterItem(this.modifyFormState, 0),
                  FilterItem(this.modifyFormState, 1),
                  FilterItem(this.modifyFormState, 2),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: double.infinity,
                        child: RaisedButton.icon(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          color: Theme.of(context).primaryColor,
                          label: Text(
                            'Buscar',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(SearchingServiceScreen.routeName);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void modifyFormState(String key, data) {
    this._formState[key] = data;
  }
}
