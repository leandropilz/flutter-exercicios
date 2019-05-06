import 'package:flutter/material.dart';

class HelloPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ), //AppBar
      body: Container(
        color: Colors.white,
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context, "Clicou no voltar");
            },
            child: Text(
              "Voltar",
              style: TextStyle(fontSize: 30),
            ), //Text
          ), //RaisedButton
        ), //Center
      ), //Container
    ); //Scaffold
  }
}
