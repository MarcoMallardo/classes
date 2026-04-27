import 'package:flutter/material.dart';
import 'package:router/entities/models.dart';

class HomeScreen extends StatefulWidget {
  String username = "";

  HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Product product1 = Product(name: 'Coca-cola', price: 2000.0, description: 'Bebida gaseosa', quantity: 10);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido, ${widget.username}',
            ),
            SizedBox(height: 20),
            Text('Producto: ${product1.name}'),
            SizedBox(height: 10),
            Text('Precio: ${product1.price}'),
            SizedBox(height: 10),
            Text('Descripción: ${product1.description}'),
            SizedBox(height: 10),
            Text('Cantidad: ${product1.quantity}'),
            SizedBox(height: 10),
            Text('Total: ${product1.totalPrice()}'),
          ],
        ),
      ),
    );
  }
}