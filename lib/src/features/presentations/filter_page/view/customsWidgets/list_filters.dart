import 'package:flutter/material.dart';
//Colors
import 'package:flutter_application_2/src/colors/colors.dart';
//CommonWidgets
import 'package:flutter_application_2/src/features/presentations/common_widgets/headers/headerText.dart';

class ListFilter extends StatefulWidget {
  String text;
  bool isActive;
  Function func;
  ListFilter({Key key, this.text, this.isActive, this.func}) : super(key: key);

  @override
  _ListFilterState createState() => _ListFilterState();
}

class _ListFilterState extends State<ListFilter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
            context: context,
            text: widget.text,
            isActive: widget.isActive,
            func: widget.func),
      ],
    );
  }
}

Widget listTiles(
    {BuildContext context, text: String, isActive: bool, Function func}) {
  return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: ListTile(
        onTap: func,
        title: headerText(
          text: text,
          color: isActive ? orange : Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 17,
        ),
        trailing: isActive
            ? Icon(
                Icons.check,
                color: isActive ? orange : gris,
              )
            : Text(''),
      ));
}
