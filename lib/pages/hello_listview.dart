import 'package:flutter/material.dart';

class HelloListView extends StatefulWidget {
  @override
  _HelloListViewState createState() => _HelloListViewState();
}

class _HelloListViewState extends State<HelloListView> {
  var _isGridView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              setState(() {
                _isGridView = false;
              });
            },
          ), //Icon list
          IconButton(
            icon: Icon(Icons.grid_on),
            onPressed: () {
              setState(() {
                _isGridView = true;
              });
            },
          ), //Icon Grid on
        ], //<Widget>
      ), //AppBar
      body: Container(
        color: Colors.white,
        child: _listView(),
      ), //Container
    ); //Scaffold
  }

  _listView() {
    List<String> dogs = List.generate(50, (idx) {
      return "assets/images/dog${idx % 5 + 1}.png";
    });

    return _isGridView
        ? GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: dogs.length,
            itemBuilder: (context, idx) {
              return _listItem(dogs, idx);
            }) //GridView
        : ListView.builder(
            itemExtent: 350,
            itemCount: dogs.length,
            itemBuilder: (context, idx) {
              return _listItem(dogs, idx);
            }); //ListView
  }

  Widget _listItem(List<String> dogs, int idx) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: _img(dogs[idx]),
        ), //SizedBox
        Container(
          margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.black45,
          ), //BoxDecoration
          child: Text(
            "Dog ${idx + 1}",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ), //TextStyle
          ), //Text
        ), //Container
      ], //Widget
    ); //Stack
  }

  _img(String path) {
    return Image.asset(
      path,
      fit: BoxFit.cover,
    ); //Image.asset
  }
}
