import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Hola, ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 28,
                            ),
                          ),
                          TextSpan(
                            text: 'Juan!',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 28,
                            ),
                          )
                        ]),
                  ),
                  Text(
                    '¿En que te podemos ayudar?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1496493012404-97903cd749a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 2,
            ),
            margin: EdgeInsets.only(top: 25, bottom: 35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).primaryColor,
            ),
            child: TextField(
              cursorColor: Colors.white,
              cursorWidth: 4,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: 'Busca un servicio...',
                hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                border: InputBorder.none,
                // focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(0),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
              ),
              itemBuilder: (ctx, i) => GridTile(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
