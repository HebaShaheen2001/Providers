import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/Cart/cartClass.dart';
import 'package:providers/Screen/Cart/favoritesClass.dart';
import 'package:providers/Screen/Cart/productsClass.dart';

class Productsscreen extends StatefulWidget {
  const Productsscreen({super.key});

  @override
  State<Productsscreen> createState() => _ProductsscreenState();
}

class _ProductsscreenState extends State<Productsscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log('testTest');
  }

  bool isDataAdded = false;

  @override
  Widget build(BuildContext context) {
    final productShow = Provider.of<productsClass>(context);
    final cartProvider = Provider.of<CartClass>(context);
    final cartItems = cartProvider.cartList;
    final favoritesProvider = Provider.of<favoritesClass>(context);
    final favoritesItems = favoritesProvider.favoritesList;

    Future.delayed(Duration.zero, () {
      productShow.addProducts('name1', '100', 'description1', true);
      productShow.addProducts('name2', '09', 'description2', true);
      productShow.addProducts('name3', 'price', 'description3', true);
      productShow.addProducts('name4', 'price', 'description3', true);
      productShow.addProducts('name5', 'price', 'description3', true);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("المنتجات"),
        actions: [
          Stack(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.red,
                child: Center(child: Text(cartItems.length.toString())),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Cartscreen');
                  },
                  icon: Icon(Icons.shopping_cart_rounded)),
            ],
          ),
          Stack(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.red,
                child: Center(child: Text(favoritesItems.length.toString())),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'favoritesScreen');
                  },
                  icon: Icon(Icons.favorite)),
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: productShow.productsList.length,
        itemBuilder: (context, index) {
          final product = productShow.productsList[index];
          final isInCart = cartProvider.isInCart(product);
          final isInFavorites = favoritesProvider.isInfavorites(product);

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
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            isInCart
                                ? Icons.remove_shopping_cart
                                : Icons.add_shopping_cart,
                          ),
                          onPressed: () {
                            cartProvider.addCart(product);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            isInFavorites
                                ? Icons.favorite
                                : Icons.favorite_border,
                          ),
                          onPressed: () {
                            favoritesProvider.addfavorites(product);
                          },
                        ),
                      ],
                    ),
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
