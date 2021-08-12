import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/colors/colors.dart';

class CuisinesFilter extends StatefulWidget {
  CuisinesFilter({Key key}) : super(key: key);

  @override
  _CuisinesFilterState createState() => _CuisinesFilterState();
}

class _CuisinesFilterState extends State<CuisinesFilter> {
  bool btnSushi = false;
  bool btnAmerican = false;
  bool btnAsia = false;
  bool btnPizza = false;
  bool btnFastFood = false;
  bool btnVietname = false;
  bool btnDesserts = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _roundedButtonFilter(() {
              setState(() => btnAmerican = !btnAmerican);
            }, btnAmerican, 'Americana'),
            _roundedButtonFilter(() {
              setState(() => btnPizza = !btnPizza);
            }, btnPizza, 'Pizzeria'),
            _roundedButtonFilter(() {
              setState(() => btnDesserts = !btnDesserts);
            }, btnDesserts, 'Postres')
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          _roundedButtonFilter(() {
            setState(() => btnFastFood = !btnFastFood);
          }, btnFastFood, 'Comida Rápida'),
          _roundedButtonFilter(() {
            setState(() => btnAsia = !btnAsia);
          }, btnAsia, 'Asiatica'),
        ]),
      ],
    );
  }
}

Widget _roundedButtonFilter(Function func, bool isActive, String labelText) {
  return RaisedButton(
    onPressed: func,
    elevation: 0.5,
    color: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(color: isActive ? orange : gris)),
    child: Text(labelText, style: TextStyle(color: isActive ? orange : gris)),
  );
}
