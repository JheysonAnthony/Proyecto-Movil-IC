import 'package:flutter/material.dart';

//Tabs
import 'package:flutter_application_2/src/features/presentations/tabs/explore_tab.dart';
import 'package:flutter_application_2/src/features/presentations/tabs/myorder_tab.dart';
import 'package:flutter_application_2/src/features/presentations/tabs/profile_tab.dart';
import 'package:flutter_application_2/src/features/presentations/tabs/reservation_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    ReservationTab(),
    ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _changeWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _changeWidget,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explorar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Mi orden'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Reservas'),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Perfil')
        ]);
  }
}
