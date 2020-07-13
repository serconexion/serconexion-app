import 'package:flutter/material.dart';

class ProfileAddPlaceScreen extends StatelessWidget {
  static const String routeName = '/profile-add-place-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: FittedBox(
          child: Text(
            'Añadir un lugar',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: AddPlaceForm(),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: this.loginButton(context),
          ),
        ],
      ),
    );
  }

  Widget loginButton(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        color: Theme.of(context).primaryColor,
        child: Text('Guardar',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

class AddPlaceForm extends StatefulWidget {
  @override
  _AddPlaceFormState createState() => _AddPlaceFormState();
}

class _AddPlaceFormState extends State<AddPlaceForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          cursorColor: Theme.of(context).accentColor,
          cursorWidth: 4,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Theme.of(context).accentColor,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).accentColor, width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Nombre',
            suffixIcon:
                Icon(Icons.location_city, color: Theme.of(context).accentColor),
            hintStyle: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          cursorColor: Theme.of(context).accentColor,
          cursorWidth: 4,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Theme.of(context).accentColor,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).accentColor, width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Dirección',
            suffixIcon: Icon(Icons.place, color: Theme.of(context).accentColor),
            hintStyle: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
