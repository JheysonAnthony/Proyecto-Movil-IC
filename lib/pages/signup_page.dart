import 'package:flutter/material.dart';
//Colors
import 'package:flutter_application_2/colors/colors.dart';
//Backbutton
import 'package:flutter_application_2/widgets/back_button.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text('Registrarse',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  )),
              _usernameInput(context),
              _emailInput(context),
              _phoneInput(context),
              _dateofbirthInput(context),
              _passwordInput(context),
              _signupButton(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                child: Text(
                  'Al hacer clic en Registrarse, acepta los siguientes Términos y Condiciones sin reservas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _usernameInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Nombre de Usuario',
            border: OutlineInputBorder(borderSide: BorderSide.none))),
  );
}

Widget _emailInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Correo electrónico',
            border: OutlineInputBorder(borderSide: BorderSide.none))),
  );
}

Widget _phoneInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Número de celular',
            border: OutlineInputBorder(borderSide: BorderSide.none))),
  );
}

Widget _dateofbirthInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
            hintText: 'Fecha de Nacimiento',
            border: OutlineInputBorder(borderSide: BorderSide.none))),
  );
}

Widget _passwordInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: OutlineInputBorder(borderSide: BorderSide.none))),
  );
}

Widget _signupButton(BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text(
        'Crear cuenta',
        style: TextStyle(color: Colors.white, fontSize: 17.0),
      ),
    ),
  );
}
