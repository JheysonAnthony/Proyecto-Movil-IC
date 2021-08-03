import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Bitute Criollo"),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.menu),
                  tooltip: 'Menú',
                  onPressed: () {},
                )
              ],
            ),
            body: Column(
              children: <Widget>[
                Text("Plato 1"),
                Text("Plato 2"),
                Expanded(
                    child: FittedBox(
                  fit: BoxFit.contain,
                  child: const FlutterLogo(),
                ))
              ],
            )));
  }
}
