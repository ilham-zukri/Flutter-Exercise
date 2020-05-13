import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double _height = 0;
  bool _dropDown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cuboid Measurement",
          style: TextStyle(),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromRGBO(111, 239, 243, 1),
              Color.fromRGBO(218, 247, 166, 1),
            ],
          ),
        ),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Main Title
            Flexible(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Cuboid Measurement",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text("v2.0"),
                  ],
                ),
                margin: EdgeInsets.only(bottom: 10),
              ),
            ),

            Flexible(
              flex: 7,
              child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment(0, 0.35),
                    child: Container(
                      width: 100,
                      height: 100,
                      child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            _height = 450;
                            _dropDown = true;
                          });
                        },
                        child: Text("Menu"),
                        color: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        elevation: 8,
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      AnimatedContainer(
                        duration: Duration(milliseconds: 700),
                        width: 450,
                        height: _height,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: generateBoxShadow(),
                          ),
                          margin: EdgeInsets.only(bottom: 8),
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: Row(
                                  children: <Widget>[
                                    Flexible(
                                      flex : 1,
                                      child: Container(
                                        margin: EdgeInsets.all(8),
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Flexible(
                                      flex : 1,
                                      child: Container(
                                        margin: EdgeInsets.all(8),
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Flexible(
                                      flex : 1,
                                      child: Container(
                                        margin: EdgeInsets.all(8),
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  color: Colors.amber,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  color: Colors.cyan,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 6),
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 375,
                          child: (_dropDown == true) ? buildDropDown() : null,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 6),
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 375,
                          child: RaisedButton(
                            child: Text("About"),
                            onPressed: () {
                              setState(() {
                                _height = 0;
                              });
                            },
                            elevation: 8,
                            color: Color.fromRGBO(111, 239, 243, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<BoxShadow> generateBoxShadow() {
    return (_dropDown == true)
        ? <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.37),
              blurRadius: 5,
              spreadRadius: 0.3,
              offset: Offset(0, 6),
            ),
          ]
        : null;
  }

  RaisedButton buildDropDown() {
    return RaisedButton(
      child: Text("Fold"),
      onPressed: () {
        setState(() {
          _dropDown = false;
          _height = 0;
        });
      },
      elevation: 8,
      color: Color.fromRGBO(111, 239, 243, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}
