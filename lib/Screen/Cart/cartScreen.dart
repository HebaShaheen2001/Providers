import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/Cart/cartClass.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartClass>(context);
    final cartItems = cartProvider.cartList;

    return Scaffold(
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final product = cartItems[index];
          return Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(product.name.toString()),
                  subtitle: Text('${product.price} - ${product.description}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      cartProvider.addCart(product);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
