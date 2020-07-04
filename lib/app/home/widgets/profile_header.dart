import 'package:flutter/material.dart';
import 'package:serconexion_app/app/profile/profile_screen.dart';

class ProfileHeader extends StatelessWidget {
  final String boldText;
  final String text;
  final String subTitle;

  ProfileHeader({
    @required this.text,
    this.boldText,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: this.text,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 28,
                      ),
                    ),
                    TextSpan(
                      text: this.boldText,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                      ),
                    )
                  ]),
            ),
            this.subTitle != null
                ? Text(
                    '¿En que te podemos ayudar?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )
                : Container(),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(ProfileScreen.routeName);
          },
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1496493012404-97903cd749a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'),
          ),
        )
      ],
    );
  }
}
