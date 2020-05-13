import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flexible Layout"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Row(children: <Widget>[

                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.green,
                    ),
                  ),

                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top : 5, bottom: 5),
                      color: Colors.lime,
                    ),
                  ),

                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.indigo,
                    ),
                  ),

                ]),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.amber,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
