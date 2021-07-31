import 'package:flutter/material.dart';
//Colors
import 'package:flutter_application_2/colors/colors.dart';
//UI
import 'package:flutter/services.dart';
//Widgets
import 'package:flutter_application_2/widgets/back_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Image(
                width: double.infinity,
                height: 250.0,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://i.pinimg.com/originals/04/37/41/04374193ab25aa58e70eca282f34ee7c.jpg')),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: backButton(context, Colors.white),
            )
          ],
        ),
        Transform.translate(
          offset: Offset(0.0, -20.0),
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Text("Bienvenido de nuevo",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0)),
                    Text("Inicia sesión en tu cuenta",
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0)),
                    _emailInput(),
                    _passwordInput(),
                    _loginButton(context),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'forgotpassword');
                        },
                        child: Text('¿Olvidaste tu contraseña?',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 17.0)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("¿No tienes una cuenta?",
                              style: TextStyle(
                                  color: gris,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0)),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'signup');
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text('Regístrate',
                                  style: TextStyle(
                                      color: Theme.of(context).accentColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Correo electrónico',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _loginButton(BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 15.0),
    child: RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'tabs');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text(
        'Inicia sesión',
        style: TextStyle(color: Colors.white, fontSize: 15.0),
      ),
    ),
  );
}
