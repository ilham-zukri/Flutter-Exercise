import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int number = 0 ;

  void tekanTombolTambah(){
    setState(() {
      ++number;
    });
  }

  void tekaTombolReset(){
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful Widget Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(number.toString(), style: TextStyle(fontSize: 15 + number.toDouble(), fontWeight: FontWeight.bold)),
              RaisedButton(
                child: Text("Tambah Bilangan"),
                onPressed: tekanTombolTambah,
              ),
              RaisedButton(
                child: Text("Reset"),
                onPressed: tekaTombolReset,
              )
            ],)
        ),
      ),
    );
  }
}