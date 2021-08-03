import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  static String id = 'orders_page';

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  List<Pedidos> _pedidos = [
    Pedidos("Entregado", "10"),
    Pedidos("Entregado", "10"),
    Pedidos("Entregado", "10"),
    Pedidos("Entregado", "10"),
    Pedidos("Entregado", "10"),
    Pedidos("Entregado", "10"),
    Pedidos("Entregado", "10"),
  ];

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
      body: ListView.builder(itemBuilder: (context, index) {
        return Text(_pedidos[index].estado);
      }),
    ));
  }
}

class Pedidos {
  String estado;
  String total;

  Pedidos(estado, total) {
    this.estado = estado;
    this.total = total;
  }
}

Widget _pedidos() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Scaffold(
      body: Center(
        child: Row(),
      ),
    );
  });
}
