import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/colors/colors.dart';
//CommonWidgets
import 'package:flutter_application_2/src/features/presentations/common_widgets/backbuttons/back_button.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/cards/favouritesCard.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/headers/headerText.dart';

class CollectionDetailPage extends StatelessWidget {
  const CollectionDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: orange,
            expandedHeight: 230,
            flexibleSpace: FlexibleSpaceBar(
                background: Stack(
              children: [
                Image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80')),
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                      borderRadius: BorderRadius.circular(10),
                    )),
                Center(
                  child: headerText(
                      text: 'dsdsd \n efwewfwe',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      textAlign: TextAlign.center),
                ),
              ],
            )),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      child: headerText(
                          text: '123 lugrare',
                          color: Color.fromRGBO(51, 58, 77, 1.0),
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                    Column(
                      children: [
                        favouritesCard(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'),
                            title: "Andys y Cindys diner",
                            subtitle: "calle peerf sffgfsdhjsdfds",
                            review: "4.5",
                            rating: "(232 dsds)",
                            buttonText: 'Delivery',
                            hasActionButton: true,
                            isFavourite: true),
                      ],
                    )
                  ],
                ))
          ]))
        ],
      ),
    );
  }
}
