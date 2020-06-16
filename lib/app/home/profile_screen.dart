import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  
  Widget _backButton() {
    return InkWell(
      onTap: () {
        // devolverse a pagina en la que estaba
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: const Icon(Icons.keyboard_arrow_left, size:35, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
  Widget _photo() {
    return Container(
           child: Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1496493012404-97903cd749a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Juan Garcia\nPinto',
                          
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                          ),
                        )
                      ]),
                ),
              ],
           )
           
     ); 
  }
  Widget _places() {
    return Container (
      child: Container(
              padding: EdgeInsets.only(left: 30 , right: 30, top: 10),
              width: double.infinity,
              margin: EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Icon(Icons.place, size: 18.0, color : Colors.white),
                            Text(
                              ' Tus Lugares',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )

    );
  }

  Widget _cards() {
    return Container (
      child: Container(
              padding: EdgeInsets.only(left: 30 , right: 30, top: 10),
              width: double.infinity,
              margin: EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Icon(Icons.credit_card, size: 18.0, color: Colors.white),
                            Text(
                              ' Tus Tarjetas',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
    );
  }

  Widget _information() {
    return Container (
      child: Container(
               padding: EdgeInsets.only(left: 30 , right: 30, top: 10),
              width: double.infinity,
              margin: EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Icon(Icons.person, size: 18.0, color : Colors.white),
                            Text(
                              ' Tu Informacion',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )

    );
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 70, // specific value
              child:  _backButton()
           )
          ),
          _photo(),
          _places(),
          _cards(),
          _information()
        ]
      )
      )
    );
  }
}