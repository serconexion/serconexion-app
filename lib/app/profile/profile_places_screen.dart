import 'package:flutter/material.dart';
import 'package:serconexion_app/app/profile/profile_add_place_screen.dart';

class ProfilePlacesScreen extends StatefulWidget {
  static const String routeName = '/profile-places-screen';

  @override
  _ProfilePlacesScreenState createState() => _ProfilePlacesScreenState();
}

class _ProfilePlacesScreenState extends State<ProfilePlacesScreen> {
  final places = [
    {'name': 'Casa Salitre', 'address': 'Kr 68 #32-21'},
    {'name': 'Oficina Chapinero', 'address': 'Kr 7 #14-30'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: FittedBox(
          child: Text(
            'Tus Lugares',
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
        child: Column(
          children: [
            SizedBox(height: 20),
            ...this.placesList(context),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(ProfileAddPlaceScreen.routeName);
                  },
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Añadir un lugar',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> placesList(BuildContext context) {
    return this.places.map((place) {
      return Dismissible(
        key: Key(place['address']),
        onDismissed: (direction) {
          setState(() {
            this.places.removeWhere(
                (element) => element['address'] == place['address']);
          });
        },
        direction: DismissDirection.endToStart,
        background: Container(
          color: Colors.redAccent,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          alignment: Alignment.centerRight,
          child: Icon(Icons.delete, color: Colors.white),
        ),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Theme.of(context).accentColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                place['name'],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              Text(
                place['address'],
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }
}
