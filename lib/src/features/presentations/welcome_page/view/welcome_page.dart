import 'dart:ui';

import 'package:flutter/material.dart';
//Colors
import 'package:flutter_application_2/src/colors/colors.dart';
//CommonWidget
import 'package:flutter_application_2/src/features/presentations/common_widgets/headerText.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/roundedButton.dart';

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
              child: headerText(
                  text: 'Restaurant "El Bitute Criollo"',
                  color: Colors.white,
                  fontSize: 45.0),
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
            roundedButton(
              labelButton: 'Inicia sesión',
              color: orange,
              func: () {
                Navigator.pushNamed(context, 'login');
              },
            ),
            roundedButton(
                labelButton: 'Conéctate con Facebook',
                color: fbColor,
                isWhithIcon: true,
                icon: AssetImage('images/facebook_logo_1.png'),
                func: () => print("Hola"))
          ],
        )
      ],
    ));
  }
}
