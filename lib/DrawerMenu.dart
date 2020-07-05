import 'package:flutter/material.dart';
import 'package:flutter_listTile/ItemData2.dart';
import 'package:flutter_listTile/detail_screen.dart';

class DrawerMenu extends StatelessWidget {
  final appTitle = 'Drawer Menu Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(
        title: appTitle,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('My page!'),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item data 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item data 2'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ItemData2()),
              );
            },
          ),
        ]),
      ),
    );
  }
}
