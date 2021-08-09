import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/colors/colors.dart';

//CommonWidgets
import 'package:flutter_application_2/src/features/presentations/common_widgets/back_button.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/roundedButton.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/headerText.dart';
import 'package:flutter_application_2/src/features/presentations/common_widgets/alertdialog.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(children: [
            headerText(
                text: 'Recuperar contraseña',
                color: Theme.of(context).primaryColor,
                fontSize: 30.0),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Por favor introduzca su dirección de correo electrónico. Recibirá un enlace para crear una nueva contraseña en su correo electrónico',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                ),
              ),
            ),
            _emailInput(),
            roundedButton(
                context: context,
                color: orange,
                labelButton: 'Aceptar',
                func: () => _showAlerta(context))
          ]),
        ),
      ),
    );
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

void _showAlerta(BuildContext context) {
  showAlertDialog(
      context,
      AssetImage('images/fpassword.png'),
      'Tu contraseña ha sido reestablecida',
      "En breve recibirá un correo electrónico con un codigo para configurar una nueva contraseña.",
      roundedButton(
          color: orange,
          labelButton: 'Aceptar',
          func: () {
            Navigator.pushNamed(context, 'login');
          }));
}
