import 'package:counter_example/provider/favouriteitem_provider.dart';
import 'package:counter_example/screens/favouriter_items_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteItemsScreen extends StatefulWidget {
  const FavouriteItemsScreen({super.key});

  @override
  State<FavouriteItemsScreen> createState() => _FavouriteItemsScreenState();
}

class _FavouriteItemsScreenState extends State<FavouriteItemsScreen> {
  List<int> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite items"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FavouriteItemsListScreen()));
              },
              child: const Icon(Icons.favorite)),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
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
