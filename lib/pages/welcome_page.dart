import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';

import 'login_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://i.pinimg.com/originals/57/5c/6a/575c6a57cf8862d76f6a5a96189ecf1c.jpg'),
          )),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text('Restaurant "El Bitute Criollo"',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              child: Text(
                  'Después de tu casa, este es el mejor restaurante del mundo.',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0)),
            ),
            Container(
              width: 350.0,
              height: 45.0,
              margin: EdgeInsets.only(top: 40.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: Theme.of(context).accentColor,
                child: Text(
                  'Inicia sesión',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ),
            ),
            Container(
              width: 350.0,
              height: 45.0,
              margin: EdgeInsets.only(top: 20.0),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                // ignore: deprecated_member_use
                color: Theme.of(context).buttonColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('images/facebook_logo_1.png'),
                      width: 25.0,
                      height: 25.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Text('Conéctate con Facebook',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.0)),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
