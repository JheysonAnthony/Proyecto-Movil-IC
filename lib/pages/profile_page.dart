import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset(
                  "images/logo.png",
                  height: 200.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("Nombre y apellido"),
              SizedBox(
                height: 15.0,
              ),
              IconButton(
                  icon: const Icon(Icons.edit),
                  color: Colors.grey,
                  tooltip: 'Editar',
                  onPressed: () {}),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
