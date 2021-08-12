import 'package:flutter/material.dart';
//Colors
import 'package:flutter_application_2/src/colors/colors.dart';
//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';
//CommonWidget
import 'package:flutter_application_2/src/features/presentations/common_widgets/cards/firsttypeCard.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/headers/headerText.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              child: Column(
                children: [
                  _topBar(context),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      alignment: Alignment.centerLeft,
                      child: headerText(
                          text: 'Menú del día',
                          color: Colors.black,
                          fontSize: 30.0)),
                  _sliderCards(),
                  _headers(context, "Platos a la carta", "Mostrar todo"),
                  firstCard(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'),
                    title: "Andys y Cindys diner",
                    subtitle: "calle peerf sffgfsdhjsdfds",
                    review: "4.5",
                    rating: "(232 dsds)",
                    buttonText: 'Delivery',
                    hasActionButton: true,
                  ),
                  firstCard(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'),
                    title: "Andys y Cindys diner",
                    subtitle: "calle peerf sffgfsdhjsdfds",
                    review: "4.5",
                    rating: "(232 dsds)",
                    buttonText: 'Delivery',
                    hasActionButton: true,
                  ),
                  firstCard(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'),
                    title: "Andys y Cindys diner",
                    subtitle: "calle peerf sffgfsdhjsdfds",
                    review: "4.5",
                    rating: "(232 dsds)",
                    buttonText: 'Delivery',
                    hasActionButton: true,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'collection');
                      },
                      child: _headers(context, "Colecciones", "Mostrar todo")),
                  _sliderCollection()
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Row(children: [
    GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'search'),
      child: Container(
        width: 290,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 20.0,
              color: gris,
            ),
            Text(
              'Buscar',
              style: TextStyle(color: gris, fontSize: 17.0),
            )
          ],
        ),
      ),
    ),
    Container(
      width: 40.0,
      height: 40.0,
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Color.fromRGBO(209, 209, 214, 1.0),
          borderRadius: BorderRadius.circular(30)),
      child: IconButton(
          icon: Icon(
            Icons.filter_list,
            size: 25,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'filter');
          }),
    ),
  ]);
}

Widget _sliderCards() {
  return Container(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _card(context);
            });
      },
    ),
  );
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'placedetail');
    },
    child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                  width: 200.0,
                  height: 250.0,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80')),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text("Andy & Cindy ffsffsdfs",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Andy & Cindy",
                    style: TextStyle(
                        color: Theme.of(context).disabledColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: amarillo, size: 16),
                  Text("4.8",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  Text("(233 tairifn)",
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: 80.0,
                    height: 18.0,
                    child: RaisedButton(
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      color: Theme.of(context).accentColor,
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text(
                        'delivery',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                  )
                ],
              )
            ])
          ],
        )),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10.0),
        alignment: Alignment.centerLeft,
        child:
            headerText(text: textHeader, color: Colors.black, fontSize: 20.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _sliderCollection() {
  return Container(
    height: 180.0,
    child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _cardCollection(context);
            },
          );
        }),
  );
}

Widget _cardCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'),
          ),
        )
      ],
    ),
  );
}
