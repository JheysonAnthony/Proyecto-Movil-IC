import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';

class RegisterPage extends StatefulWidget {
  static String id = 'register_page';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text("Bitute Criollo"),
              ),
              SizedBox(
                height: 15.0,
              ),
              _nameuserTextField(),
              SizedBox(
                height: 15.0,
              ),
              _surnameuserTextField(),
              SizedBox(
                height: 15.0,
              ),
              _directionTextField(),
              SizedBox(
                height: 15.0,
              ),
              _phoneTextField(),
              SizedBox(
                height: 15.0,
              ),
              _emailTextField(),
              SizedBox(
                height: 15.0,
              ),
              _passwordTextField(),
              SizedBox(
                height: 20.0,
              ),
              _buttonRegister(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _nameuserTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'Nombres',
          labelText: 'Nombres',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _surnameuserTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'Apellidos',
          labelText: 'Apellidos',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _directionTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.directions),
          hintText: 'Av. Sin Nombre N° 000',
          labelText: 'Dirección',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _phoneTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: Icon(Icons.phone),
          hintText: '000000000',
          labelText: 'Número de celular',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _emailTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo electrónico',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _passwordTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock),
          hintText: 'Contraseña',
          labelText: 'Contraseña',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _buttonRegister() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        child: Text(
          'Iniciar Sesión',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10.0,
      color: Colors.amber,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
    );
  });
}
