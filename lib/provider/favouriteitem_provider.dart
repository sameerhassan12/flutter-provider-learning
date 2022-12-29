import 'package:flutter/cupertino.dart';

class FavouriteItemsProvider with ChangeNotifier {
  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addItem(item) {
    selectedItem.add(item);
    notifyListeners();
  }

  void removeItem(item) {
    selectedItem.remove(item);
    notifyListeners();
  }
}
