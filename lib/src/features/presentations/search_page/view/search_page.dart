import 'package:flutter/material.dart';
//Colors
import 'package:flutter_application_2/src/colors/colors.dart';
//CommonWidgets
import 'package:flutter_application_2/src/features/presentations/common_widgets/headers/headerText.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/headers/headerdouble.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/cards/verticalCard.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/cards/firsttypeCard.dart';
//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 10.0),
                      alignment: Alignment.centerLeft,
                      child: headerText(
                          text: 'Buscar', color: Colors.black, fontSize: 30.0)),
                  _searchInput(context),
                  SizedBox(
                    height: 20.0,
                  ),
                  headerdoubleText(
                      headermText: 'Busquedas recientes',
                      actionText: 'Borrar todo'),
                  _sliderRecentSearch(),
                  SizedBox(height: 20.0),
                  headerdoubleText(
                      headermText: 'Recomendado para ti', actionText: ''),
                  SizedBox(height: 20.0),
                  firstCard(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'),
                    title: "Andys y Cindys diner",
                    subtitle: "calle peerf sffgfsdhjsdfds",
                    review: "4.5",
                    rating: "(232 dsds)",
                    hasActionButton: false,
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
      height: 40.0,
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 5.0),
              prefixIcon: Icon(Icons.search, color: gris),
              hintText: 'Buscar',
              border: OutlineInputBorder(borderSide: BorderSide.none))));
}

Widget _sliderRecentSearch() {
  return Container(
      margin: EdgeInsets.only(top: 5.0),
      height: 190.0,
      child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return verticalCard(
                  context: context,
                  width: 160.0,
                  height: 120.0,
                  title: 'fsdfsffsf',
                  subtitle: 'fdssfdsfs',
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'));
            },
          );
        },
      ));
}
