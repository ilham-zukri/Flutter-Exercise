import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                // obscureText: true, //bintang password
                decoration: InputDecoration(
                  icon: Icon(Icons.phone),
                  // There's Suffix and Prefix
                  // prefix: Container(width : 5, height: 5, color : Colors.red),
                  prefixIcon: Icon(Icons.person_outline),
                  prefixText: "Name : ",
                  prefixStyle: TextStyle(color: Colors.blue, fontWeight : FontWeight.bold),
                  labelText: "Nama Lengkap",
                  labelStyle: TextStyle(fontSize : 20),
                  hintText: "Masukan Nama Lengkap",
                  hintStyle: TextStyle(fontSize: 12),
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLength: 5,
                controller: _controller,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(_controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
