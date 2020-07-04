import 'package:flutter/material.dart';

import 'package:serconexion_app/app/home/widgets/profile_header.dart';
import 'package:serconexion_app/app/services/services_detail_screen.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final TextEditingController _textSearchController = TextEditingController();
  final List<Map<String, String>> _services = [
    {
      'name': 'Limpieza',
      'image':
          'https://images.unsplash.com/photo-1562886877-f12251816e01?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1778&q=80',
    },
    {
      'name': 'Reparaciones',
      'image':
          'https://images.unsplash.com/photo-1505798577917-a65157d3320a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    },
    {
      'name': 'Cuidado y paseo de mascotas',
      'image':
          'https://images.unsplash.com/photo-1494947665470-20322015e3a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
    },
  ];

  List<Map<String, String>> _filteredList;

  @override
  void initState() {
    super.initState();

    this._filteredList = this._services;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        children: <Widget>[
          ProfileHeader(
            text: 'Hola, ',
            boldText: 'Juan!',
            subTitle: '¿En que te podemos ayudar?',
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 2,
            ),
            margin: EdgeInsets.only(top: 25, bottom: 35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Theme.of(context).primaryColor,
            ),
            child: TextField(
              controller: this._textSearchController,
              onChanged: this._filterServices,
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
              itemCount: this._filteredList.length,
              itemBuilder: (ctx, i) => GridTile(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(ServicesDetailScreen.routeName, arguments: {
                      'serviceName': this._filteredList[i]['name'],
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(34),
                      child: Stack(
                        children: <Widget>[
                          Image.network(
                            this._filteredList[i]['image'],
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.black45,
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              this._filteredList[i]['name'].toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _filterServices(String value) {
    setState(() {
      this._filteredList = this
          ._services
          .where(
            (service) => service['name'].toLowerCase().contains(
                  value.toLowerCase(),
                ),
          )
          .toList();
    });
  }
}
