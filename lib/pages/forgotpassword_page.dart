import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/back_button.dart';

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
            Text('Recuperar contraseña',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                )),
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
            _sendButton(context)
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

Widget _sendButton(BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
      onPressed: () {
        _showAlerta(context);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text(
        'Enviar',
        style: TextStyle(color: Colors.white, fontSize: 17.0),
      ),
    ),
  );
}

void _showAlerta(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 400,
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/forgotpassword.png'),
                  width: 130,
                  height: 130,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    'Tu contraseña ha sido restablecida',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    'En breve recibirá un correo electrónico con un código para configurar una nueva contraseña',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ),
                _doneButton(context)
              ],
            ),
          ),
        );
      });
}

Widget _doneButton(BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'login');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text(
        'Hecho',
        style: TextStyle(color: Colors.white, fontSize: 17.0),
      ),
    ),
  );
}
