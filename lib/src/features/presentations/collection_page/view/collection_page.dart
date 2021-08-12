import 'package:flutter/material.dart';
//CommonWidgets
import 'package:flutter_application_2/src/features/presentations/common_widgets/backbuttons/back_button.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/headers/headerText.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          title: Container(
              padding: EdgeInsets.only(left: 55),
              child: headerText(text: 'Colecciones', fontSize: 20)),
          leading: Builder(
            builder: (BuildContext context) {
              return backButton(context, Colors.black);
            },
          ),
        ),
        SliverPadding(
            padding: EdgeInsets.only(left: 10.0, right: 5.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context)
              ],
            ))
      ]),
    );
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'collectiondetail');
    },
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            width: 165,
            height: 190,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'),
          ),
        ),
        Container(
            width: 165,
            height: 190,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1.3),
              borderRadius: BorderRadius.circular(10),
            )),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 35, bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              headerText(
                text: "Asiatica",
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              headerText(
                text: "12 Lugares",
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w300,
              )
            ],
          ),
        )
      ],
    ),
  );
}
