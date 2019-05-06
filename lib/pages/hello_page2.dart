import 'package:flutter/material.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ), //AppBar
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            "Page 2",
            style: TextStyle(fontSize: 30),
          ),//Text
        ), //Center
      ), //Container
    ); //Scaffold
  }
}
