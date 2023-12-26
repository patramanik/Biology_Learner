import 'package:flutter/foundation.dart';

class FavouriteItemProvider with ChangeNotifier {
  final List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addItem(value) {
    _selectedItem.add(value);
    notifyListeners();

  }

  void removeItem(value) {
    _selectedItem.remove(value);
    notifyListeners();
  }

}
