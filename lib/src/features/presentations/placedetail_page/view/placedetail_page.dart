import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/colors/colors.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/backbuttons/back_button.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/headers/headerText.dart';

class PlaceDetailPage extends StatelessWidget {
  const PlaceDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        backgroundColor: orange,
        expandedHeight: 415,
        flexibleSpace: FlexibleSpaceBar(
            background: Stack(children: [
          Image(
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80')),
          Container(
            decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1.5)),
            width: double.infinity,
            height: 350,
          ),
          Wrap(
            children: [
              _offerButton(),
              _infoPlace(),
              _placeStats(),
              _offerBanner(),
            ],
          )
        ])),
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.white);
        }),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image(
              width: 30,
              height: 30,
              image: AssetImage('images/shareapp.png'),
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {})
        ],
      )
    ]));
  }
}

Widget _offerButton() {
  return Container(
    margin: EdgeInsets.only(top: 121.0, left: 30.0, right: 15.0),
    width: double.infinity,
    height: 25,
    child: Row(
      children: [
        RaisedButton(
          elevation: 0.5,
          onPressed: () {},
          shape: StadiumBorder(),
          child: headerText(
              text: 'Free delivery', color: Colors.white, fontSize: 12.0),
          color: orange,
        )
      ],
    ),
  );
}

Widget _infoPlace() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.symmetric(vertical: 7.0),
        child: headerText(
            text: "Boon lay ho huat fried prawn noodle",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: [
            Icon(Icons.location_on, color: gris),
            headerText(
                text: "03 jameson Maamprs Apt.177",
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          ],
        ),
      ),
    ],
  );
}

Widget _placeStats() {
  return Container(
    margin: EdgeInsets.only(top: 26.0),
    padding: EdgeInsets.symmetric(horizontal: 40.0),
    height: 70.0,
    decoration: BoxDecoration(
        border: Border(
      top: BorderSide(color: Colors.white),
      bottom: BorderSide(color: Colors.white),
    )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(
                    text: '4.5',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ],
            ),
            headerText(
                text: "351 ratings",
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.bookmark,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(
                    text: '137k',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ],
            ),
            headerText(
                text: "Favourites",
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.photo,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(
                    text: '345',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ],
            ),
            headerText(
                text: "Fotos",
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
      ],
    ),
  );
}

Widget _offerBanner() {
  return Container(
    color: Color.fromRGBO(255, 237, 214, 1.0),
    padding: EdgeInsets.all(20),
    height: 90.0,
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerText(
                text: 'New try pickup',
                color: orange,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
            headerText(
                text: 'Pickup on youe time. your order is \n ready you re',
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 13.0),
          ],
        ),
        Spacer(),
        RaisedButton(
            elevation: 0.5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: orange,
            onPressed: () {},
            child: headerText(
                text: 'Order now',
                color: Colors.white,
                fontSize: 13.0,
                fontWeight: FontWeight.bold))
      ],
    ),
  );
}
