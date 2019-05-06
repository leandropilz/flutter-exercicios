import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 300,
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Leandro Pilz"),
              accountEmail: Text("leandro.pilzz@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn.iconscout.com/icon/free/png-256/avatar-372-456324.png")
//              backgroundImage: AssetImage("assets/images/dog1.png"),
                  ),
            ), //UserAccountsDrawerHeader
            ListTile(
              title: Text("Item 1"),
              subtitle: Text("Mais informações..."),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print("Item 1");
              },
            ), //ListTile
            ListTile(
              title: Text("Item 2"),
              subtitle: Text("Mais informações..."),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print("Item 2");
              },
            ), //ListTile
            ListTile(
              title: Text("Item 3"),
              subtitle: Text("Mais informações..."),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print("Item 3");
              },
            ), //ListTile
          ], //Widget
        ), //ListView
      ), //Container
    ); //SafeArea
  }
}
