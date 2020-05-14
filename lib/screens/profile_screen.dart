import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Container (
      padding: EdgeInsets.only(left: 30 , right: 30, top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1496493012404-97903cd749a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'),
                )
              ], 
            ),
          ],
        ),
      ),
    );
  }
}