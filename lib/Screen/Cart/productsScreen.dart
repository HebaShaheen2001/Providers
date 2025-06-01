import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/Cart/productsClass.dart';

class Productsscreen extends StatefulWidget {
  const Productsscreen({super.key});

  @override
  State<Productsscreen> createState() => _ProductsscreenState();
}

class _ProductsscreenState extends State<Productsscreen> {
  @override
  Widget build(BuildContext context) {
    final productShow = Provider.of<productsClass>(context);
    setState(() {
      productShow.addProducts('name1', '100', 'description1');
      productShow.addProducts('name2', '09', 'description2');
      productShow.addProducts('name3', 'price', 'description3');
      productShow.addProducts('name4', 'price', 'description3');
      productShow.addProducts('name5', 'price', 'description3');
    });
    return Scaffold(
        body: ListView.builder(
            itemCount: productShow.productsList.length,
            itemBuilder: (context, index) {
              final product = productShow.productsList[index];
              return ListTile(
                title: Text(product.name.toString()),
                subtitle: Text('${product.price} - ${product.description}'),
              );
            }));
  }
}
