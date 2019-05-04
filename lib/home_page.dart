import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  _body() {
    return Container(
        color: Colors.white,
        child: Center(  //SizedBox.expand
          child: _img(), //image
        )
//      child: Center(
//        child: _text(),
//      ), //Center
        ); //Container
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter!"),
        centerTitle: true,
      ), //AppBar
      body: _body(),
    );
  }

  _text() {
    return Text(
      "Hello world",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.dotted,
      ),
    ); //Text
  }

  _img() {
    return Image.asset(
      "assets/images/dog2.png",
      fit: BoxFit.contain,
    );
  }
}
