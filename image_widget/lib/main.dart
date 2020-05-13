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
          title: Text("Latihan Image"),
        ),
        body: Center(
          child: Container(
            color: Colors.blue[300],
            width: 250,
            height: 300,
            padding: EdgeInsets.all(5),
            child: Image(
              image: AssetImage(
                  "assets/js-logo.png"),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeatY,
            ),
          ),
        ),
      ),
      theme: ThemeData(
        primarySwatch : Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
