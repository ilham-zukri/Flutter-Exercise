import 'package:flutter/material.dart';
import 'package:multipage_navigation/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text("Latihan Navigasi")),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return MainPage();
            }),);
          },
          child: Text("Login"),
        ),
      ),
    );
  }
}
