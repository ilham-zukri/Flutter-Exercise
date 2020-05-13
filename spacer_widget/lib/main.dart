import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget Spacing"),
        ),
        body: Center(
            child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Spacer(flex: 1,),
            Container(width: 80, height: 80, color: Colors.amber),
            Spacer(flex: 2,),
            Container(width: 80, height: 80, color: Colors.cyan),
            Spacer(flex: 3,),
            Container(width: 80, height: 80, color: Colors.indigo),
            Spacer(flex: 2,),
          ],
        )),
      ),
    );
  }
}
