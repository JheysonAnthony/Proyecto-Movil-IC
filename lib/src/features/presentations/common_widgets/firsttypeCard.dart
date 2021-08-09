import 'package:flutter/material.dart';
//Colors
import 'package:flutter_application_2/src/colors/colors.dart';
//CommonWidget
import 'package:flutter_application_2/src/features/presentations/common_widgets/headerText.dart';

Widget firstCard(
    {BuildContext context,
    double marginRight = 0.0,
    double marginLeft = 10.0,
    double marginTop = 0.0,
    double marginBottom = 0.0,
    ImageProvider<Object> image,
    String title,
    String subtitle,
    String review,
    String rating,
    String buttonText = '',
    bool hasActionButton}) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'placedetail');
        },
        child: Container(
          margin: EdgeInsets.only(
              top: marginTop,
              bottom: marginBottom,
              left: marginLeft,
              right: marginRight),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  image: image,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 7.0),
                        child: headerText(
                            text: title, color: Colors.black, fontSize: 17.0)),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Text(subtitle,
                            style: TextStyle(
                                color: gris,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0))),
                    Row(
                      children: [
                        Icon(Icons.star, color: amarillo, size: 16.0),
                        Text(
                          review,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.0),
                          child: Text(
                            rating,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25.0),
                          width: 80.0,
                          height: 18.0,
                          child: hasActionButton
                              ? RaisedButton(
                                  elevation: 0.5,
                                  shape: StadiumBorder(),
                                  color: orange,
                                  textColor: Colors.white,
                                  onPressed: () {},
                                  child: Text(
                                    buttonText,
                                    style: TextStyle(
                                        fontSize: 11.0, color: Colors.white),
                                  ),
                                )
                              : Text(''),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
