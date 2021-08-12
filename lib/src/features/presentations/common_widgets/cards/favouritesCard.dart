import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/colors/colors.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/headers/headerText.dart';

Widget favouritesCard(
    {BuildContext context,
    double marginRight = 0.0,
    double marginLeft = 0.0,
    double marginTop = 5.0,
    double marginBottom = 0.0,
    ImageProvider<Object> image,
    String title,
    String subtitle,
    String review,
    String rating,
    String buttonText = '',
    bool hasActionButton,
    bool isFavourite = true}) {
  return Container(
    margin: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
        left: marginLeft,
        right: marginRight),
    padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              offset: Offset(0, 5),
              blurRadius: 10.0)
        ]),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            width: 70,
            height: 70,
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        Container(
            padding: EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          text: title,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bookmark,
                          size: 30.0,
                          color: isFavourite ? rosa : Colors.grey[300],
                        ))
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: headerText(
                      text: subtitle,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: amarillo, size: 16),
                    headerText(
                        text: review,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                    headerText(
                        text: rating,
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                      width: 95.0,
                      height: 25.0,
                      child: RaisedButton(
                          onPressed: () {},
                          elevation: 0.5,
                          shape: StadiumBorder(),
                          color: orange,
                          textColor: Colors.white,
                          child: headerText(
                              text: buttonText,
                              fontSize: 11.0,
                              color: Colors.white)),
                    ),
                  ],
                )
              ],
            ))
      ],
    ),
  );
}
