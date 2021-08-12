import 'package:flutter/material.dart';
//Colors
import 'package:flutter_application_2/src/colors/colors.dart';
//CommonWidget
import 'package:flutter_application_2/src/features/presentations/common_widgets/headers/headerText.dart';

Widget verticalCard(
    {BuildContext context,
    double width,
    double height,
    ImageProvider<Object> image,
    String title,
    String subtitle}) {
  return Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                  image: image)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: headerText(text: title, fontSize: 17.0)),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: headerText(
                    text: subtitle,
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              )
            ],
          )
        ],
      ));
}
