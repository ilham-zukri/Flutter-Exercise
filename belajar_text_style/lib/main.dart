import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Style"),
        ),
        body: Center(
          child: Text(
            "Ini adalah text",
            style: TextStyle(
              fontFamily: "Futura",
              fontSize: 30,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blueGrey,
              decorationThickness: 3,
              decorationStyle: TextDecorationStyle.dashed
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
