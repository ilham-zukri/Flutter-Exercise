import 'package:flutter/material.dart';
import 'package:latihan2/mainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage() ,
    );
  }
}