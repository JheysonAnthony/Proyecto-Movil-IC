import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hi'),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }
}

Widget _bottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(
      iconSize: 30.0,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Colors.grey,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explorar'),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment), label: 'Mi orden'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Perfil')
      ]);
}
