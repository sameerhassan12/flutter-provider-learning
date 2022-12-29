import 'package:counter_example/provider/favouriteitem_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteItemsListScreen extends StatefulWidget {
  const FavouriteItemsListScreen({super.key});

  @override
  State<FavouriteItemsListScreen> createState() =>
      _FavouriteItemsListScreenState();
}

class _FavouriteItemsListScreenState extends State<FavouriteItemsListScreen> {
  @override
  Widget build(BuildContext context) {
    final favouriteitems = Provider.of<FavouriteItemsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Favourite items"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favouriteitems.selectedItem.length,
                itemBuilder: (context, index) {
                  return Consumer<FavouriteItemsProvider>(
                      builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        if (value.selectedItem.contains(index)) {
                          value.removeItem(index);
                        } else {
                          value.addItem(index);
                        }
                      },
                      title: Text("itme $index"),
                      trailing: value.selectedItem.contains(index)
                          ? Icon(Icons.favorite_rounded)
                          : Icon(Icons.favorite_outline),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}
