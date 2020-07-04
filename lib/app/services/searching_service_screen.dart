import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

class SearchingServiceScreen extends StatelessWidget {
  static const String routeName = '/searching-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Image.asset(
                'assets/images/branding/word_logo.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text('Estamos encontrando el mejor oferente para tí...'),
            ),
            SpinKitCircle(
              color: Theme.of(context).primaryColor,
              size: 80,
            ),
          ],
        ),
      ),
    );
  }
}
