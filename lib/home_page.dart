import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter!"),
        centerTitle: true,
      ), //AppBar
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _text(),
            _img("assets/images/dog5.png"),
            _img("assets/images/dog2.png"),
            _img("assets/images/dog3.png"),

//          Padding(
//            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
//            child: _pageView(),
//          ), //Padding
            _buttons(),
          ], //Widget
        ), //Column
      ), //SingleChildScrollView

//      child: ListView(
//        children: <Widget>[
//          _text(),
//          _img("assets/images/dog5.png"),
//          _img("assets/images/dog2.png"),
//          _img("assets/images/dog3.png"),
//
////          Padding(
////            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
////            child: _pageView(),
////          ), //Padding
//          _buttons(),
//        ], //Widget
//      ), //ListView
    ); //Container
  }

  _pageView() {
    return SizedBox(
      height: 300,
      child: PageView(
        children: <Widget>[
          _img("assets/images/dog5.png"),
          _img("assets/images/dog2.png"),
          _img("assets/images/dog3.png")
        ], //Widget
      ), //PageView
    ); //SizedBox
  }

  _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _button("Ok 1", () => print("Clicou no Ok.")),
        _button("Ok 2", () => print("Clicou no Ok.")),
        _button("Ok 3", () => print("Clicou no Ok.")),
      ], //Widget
    ); //Row
  }

  _img(String path) {
    return Image.asset(
      path,
      fit: BoxFit.contain,
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

  _button(String title, Function onPressed) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
    ); //RaisedButton
  }

  void _onClick() {
    print("Clicou no botão");
  }
}
