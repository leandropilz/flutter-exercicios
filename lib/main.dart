import 'package:aula01/home_page.dart';
import 'package:aula01/home_page_statful.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blue), //ThemeData
        home: HomePageStatful()); //Material App
  }
}