import 'dart:math';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Animated Container"),
          ),
          body: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                color: Color.fromARGB(
                  255,
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                ),
                duration: Duration(milliseconds: 400),
                width: 50.0 + random.nextInt(101),
                height: 50.0 + random.nextInt(101),
                child: Container(
                  child: Center(
                    child: Text(
                      "TAP ME!!",
                      style: TextStyle(
                        color: Color.fromARGB(
                          random.nextInt(256),
                          random.nextInt(256),
                          random.nextInt(256),
                          random.nextInt(256),
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
