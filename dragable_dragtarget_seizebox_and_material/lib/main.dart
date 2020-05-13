import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Dragable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 5,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1.withOpacity(0.4),
                      shape: StadiumBorder(),
                      elevation: 5,
                    ),
                  ),
                ),

                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 5,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color2.withOpacity(0.4),
                      shape: StadiumBorder(),
                      elevation: 5,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (data) {
                isAccepted = true;
                targetColor = data;
              },
              builder: (context, candodates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        height: 100,
                        width: 100,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                        ),
                      )
                    : SizedBox(
                        height: 100,
                        width: 100,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
