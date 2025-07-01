import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/Cart/favoritesClass.dart';

class favoritesScreen extends StatelessWidget {
  const favoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<favoritesClass>(context);
    final favoritesItems = favoritesProvider.favoritesList;

    return Scaffold(
      body: ListView.builder(
        itemCount: favoritesItems.length,
        itemBuilder: (context, index) {
          final product = favoritesItems[index];
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
                      favoritesProvider.addfavorites(product);
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
