import 'package:flutter/material.dart';

import 'package:serconexion_app/app/auth/widgets/back_button.dart';

class SignUpHeader extends StatelessWidget {
  final int step;

  SignUpHeader(this.step);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20, left: 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CustomBackButton(),
                Text(
                  'Registro',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 45),
              child: Text(
                'Cliente',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 0, left: 45),
              child: Text(
                'Paso ${this.step}/2',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
