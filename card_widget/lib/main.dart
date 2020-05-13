import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, "Account Box"),
              buildCard(Icons.adb, "Android Box"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData _iconData, String _text) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(
              _iconData,
              color: Colors.green,
            ),
          ),
          Text(_text),
        ],
      ),
    );
  }
}
