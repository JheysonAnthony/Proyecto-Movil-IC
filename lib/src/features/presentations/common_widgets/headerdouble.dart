import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/colors/colors.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/headerText.dart';

Widget headerdoubleText(
    {String headermText, String actionText, Function func}) {
  return Container(
      child: Row(
    children: [
      headerText(
        text: headermText,
        fontSize: 20.0,
      ),
      Spacer(),
      GestureDetector(
        onTap: func,
        child: headerText(
            text: actionText,
            color: orange,
            fontWeight: FontWeight.w500,
            fontSize: 15.0),
      )
    ],
  ));
}
