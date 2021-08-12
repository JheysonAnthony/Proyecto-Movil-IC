import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/colors/colors.dart';
//CommonWidgets
import 'package:flutter_application_2/src/features/presentations/common_widgets/alerts/alertdialog.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/buttons/roundedButton.dart';

//Tabs
import 'package:flutter_application_2/src/features/presentations/tabs/explore_tab/view/explore_tab.dart';
import 'package:flutter_application_2/src/features/presentations/tabs/myorder_tab/view/myorder_tab.dart';
import 'package:flutter_application_2/src/features/presentations/tabs/profile_tab/view/profile_tab.dart';
import 'package:flutter_application_2/src/features/presentations/tabs/reservation_tab/view/reservation_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _requestLocation(context);
    });
  }

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
        selectedItemColor: orange,
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

  Future _requestLocation(BuildContext context) async {
    await showAlertDialog(
        context,
        AssetImage('images/localization.png'),
        'Habilita tu ubicación',
        "Permite usar tu ubicación para mostrar el restaurante en el mapa",
        roundedButton(
            color: orange, labelButton: 'Habilitar localización', func: () {}));
  }
}
