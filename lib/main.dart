import 'package:flutter/material.dart';

import 'colors/georgia_peach.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serconexion',
      theme: ThemeData(
        primarySwatch: georgiaPeach,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SerConexion'),
      ),
      body: Center(child: Text('Home')),
    );
  }
}
