import 'package:aula01/drawer_list.dart';
import 'package:aula01/pages/hello_listview.dart';
import 'package:aula01/pages/hello_page2.dart';
import 'package:aula01/pages/hello_page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePageStatful extends StatefulWidget {
  @override
  _HomePageStatfulState createState() => _HomePageStatfulState();
}

class _HomePageStatfulState extends State<HomePageStatful> {
  String _msg = "Hello world";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter!"),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.yellow,
            tabs: <Widget>[
              Tab(
                text: "Tab 1",
                icon: Icon(Icons.star),
              ), //Tab
              Tab(
                text: "Tab 2",
                icon: Icon(Icons.favorite),
              ), //Tab
              Tab(
                text: "Tab 3",
                icon: Icon(Icons.help),
              ), //Tab
            ], //<Widget>
          ), //TabBar
        ), //AppBar
        body: TabBarView(
          children: <Widget>[
            Builder(builder: (context) {
              return _buildBody(context);
            }), //Taview 1
            Container(
              color: Colors.yellow,
            ), //Taview 2
            Container(
              color: Colors.teal,
            ), //Taview 3
          ], //<Widget>
        ), //TabBarView
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            //backgroundColor: Colors.red, //Cor de Background.
            onPressed: () {
              print("Adicionar");
            }), //Float Action Button.
        drawer: DrawerList(),
      ), //Scaffold
    ); //DefaultTabController
  }

  _buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 48),
      color: Colors.white,
//      child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _text(),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: _pageView(),
          ), //Padding
          _buttons(context),
        ], //Widget
      ), //Column
//      ), //SingleChildScrollView

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
      height: 250,
      child: PageView(
        children: <Widget>[
          _img("assets/images/dog5.png"),
          _img("assets/images/dog2.png"),
          _img("assets/images/dog3.png")
        ], //Widget
      ), //PageView
    ); //SizedBox
  }

  _buttons(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button("ListView", () => _onClickPage(HelloListView())),
            _button("Page 2", () => _onClickPage(HelloPage2())),
            _button("Page 3", () => _onClickPage(HelloPage3())),
          ], //Widget
        ), //Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button("Snack", () => _onClickSnack(context)),
            _button("Dialog", () => _onClickDialog(context)),
            _button("Toast", () => _onClickToast()),
          ], //Widget
        ), //Row
      ], //Widget
    ); //Column
  }

  void _onClickSnack(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Olá Flutter"),
      action: SnackBarAction(
          label: "Ok",
          textColor: Colors.blue,
          onPressed: () {
            print("OK");
          }),
    ));
  }

  void _onClickDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Flutter é muito legal.",
              //style: TextStyle(color: Colors.blue), //pode setar cor.
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Cancelar"), //Text
                onPressed: () {
                  Navigator.pop(context);
                },
              ), //FlatButton Cancelar
              FlatButton(
                child: Text("OK"), //Text
                onPressed: () {
                  Navigator.pop(context);
                },
              ), //FlatButton OK
            ],
          ); //AlertDialog
        }); //showDialog
  }

  void _onClickToast() {
    Fluttertoast.showToast(
        msg: "Flutter é muito legal",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 2,
        backgroundColor: Colors.black45,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void _onClickPage(Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page))
        .then((s) {
      if (s != null) {
        setState(() {
          _msg = s;
        });
      }
    }); //MaterialPageRoute
  }

  void _onClick(String s) {
    setState(() {
      _msg = s;
    });
  }

  _img(String path) {
    return Image.asset(
      path,
      fit: BoxFit.contain,
    ); //Image.asset
  }

  _text() {
    return Text(
      _msg,
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
}
