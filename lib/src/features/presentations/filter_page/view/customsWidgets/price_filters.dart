import 'package:flutter/material.dart';
//Colors
import 'package:flutter_application_2/src/colors/colors.dart';

class PriceFilter extends StatefulWidget {
  PriceFilter({Key key}) : super(key: key);

  @override
  _PriceFilterState createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  RangeValues _values = RangeValues(0.0, 1.0);
  int _minPrize = 0;
  int _maxPrize = 100;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Text(
        's/. $_minPrize',
        style: TextStyle(fontSize: 16),
      ),
      Container(
        width: 278,
        child: RangeSlider(
          activeColor: orange,
          inactiveColor: gris,
          values: _values,
          min: 0,
          max: 100.0,
          onChanged: (RangeValues newValues) {
            setState(() {
              _values = newValues;
              _minPrize = _values.start.round();
              _maxPrize = _values.end.round();
            });
          },
        ),
      ),
      Text(
        's/. $_maxPrize',
        style: TextStyle(fontSize: 16),
      ),
    ]);
  }
}
