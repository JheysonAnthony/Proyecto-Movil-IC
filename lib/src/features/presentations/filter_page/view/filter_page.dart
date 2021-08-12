import 'package:flutter/material.dart';
//Colors
import 'package:flutter_application_2/src/colors/colors.dart';
//CommonWidgets
import 'package:flutter_application_2/src/features/presentations/common_widgets/headers/headerText.dart';
//CustomWidgets
import 'package:flutter_application_2/src/features/presentations/filter_page/view/customsWidgets/cuisines_filters.dart';
import 'package:flutter_application_2/src/features/presentations/filter_page/view/customsWidgets/list_filters.dart';
import 'package:flutter_application_2/src/features/presentations/filter_page/view/customsWidgets/price_filters.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //SORTBY BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 7.0),
              child: headerText(
                  text: 'COCINA',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: CuisinesFilter()),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 7.0),
              child: headerText(
                  text: 'ORDENAR POR',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            _sortByContainer(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 7.0),
              child: headerText(
                  text: 'PRECIO',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            PriceFilter()
          ]))
        ],
      ),
    );
  }

  Widget _sortByContainer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(children: [
          ListFilter(
            text: 'Más valorados',
            isActive: topRated,
            func: () {
              setState(() => topRated = !topRated);
            },
          ),
          ListFilter(
            text: 'Costo de menor a mayor',
            isActive: costLowToHigh,
            func: () {
              setState(() => costLowToHigh = !costLowToHigh);
            },
          ),
          ListFilter(
            text: 'Costo de mayor a menor',
            isActive: costHighToLow,
            func: () {
              setState(() => costHighToLow = !costHighToLow);
            },
          ),
        ]));
  }
}

Widget _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    title: Container(
        padding: EdgeInsets.only(left: 80),
        child: headerText(text: 'Filtros', fontWeight: FontWeight.w600)),
    leading: Container(
      padding: EdgeInsets.only(top: 20, left: 7.0),
      child: headerText(
          text: 'Reiniar', fontWeight: FontWeight.w500, fontSize: 15.0),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.only(top: 20, right: 10.0),
          child: headerText(
              text: 'Aceptar',
              color: orange,
              fontWeight: FontWeight.w500,
              fontSize: 15.0),
        ),
      ),
    ],
  );
}
