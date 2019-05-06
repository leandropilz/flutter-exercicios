import 'package:flutter/material.dart';

class HelloPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
      ), //AppBar
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            "Page 3",
            style: TextStyle(fontSize: 30),
          ),//Text
        ), //Center
      ), //Container
    ); //Scaffold
  }
}
