import 'package:flutter/material.dart';
import 'package:serconexion_app/app/profile/profile_dynamic_add_screen.dart';

class ProfileDynamicListScreen extends StatefulWidget {
  static const String routeName = '/profile-dynamic-list-screen';

  @override
  _ProfileDynamicListScreenState createState() =>
      _ProfileDynamicListScreenState();
}

class _ProfileDynamicListScreenState extends State<ProfileDynamicListScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: FittedBox(
          child: Text(
            arguments['title'],
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
            ...this.placesList(context, arguments['data']),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                        ProfileDynamicAddScreen.routeName,
                        arguments: arguments);
                  },
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Añadir un ${arguments['type']}',
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

  List<Widget> placesList(BuildContext context, List<Map> data) {
    return data.map((item) {
      return Dismissible(
        key: Key(item['subtitle']),
        onDismissed: (direction) {
          setState(() {
            data.removeWhere(
                (element) => element['subtitle'] == item['subtitle']);
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
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Theme.of(context).accentColor, width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                item['header'],
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              Text(
                item['subtitle'],
                style: TextStyle(
                    color: Theme.of(context).accentColor, fontSize: 16),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }
}
