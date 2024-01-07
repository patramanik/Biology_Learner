// ignore_for_file: file_names

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  static const String selectedItemsKey = 'selectedItems';

  static Future<List<int>> loadSelectedItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<int> loadedItems = (prefs.getStringList(selectedItemsKey) ?? [])
        .map((e) => int.parse(e))
        .toList();
    return loadedItems;
  }

  static Future<void> saveSelectedItems(List<int> selectedItem) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList(
      selectedItemsKey,
      selectedItem.map((e) => e.toString()).toList(),
    );
  }

  static Future<void> addItem(int newItem) async {
    List<int> currentItems = await loadSelectedItems();
    currentItems.add(newItem);
    await saveSelectedItems(currentItems);
  }

  static Future<void> removeItem(int removedItem) async {
    List<int> currentItems = await loadSelectedItems();
    currentItems.remove(removedItem);
    await saveSelectedItems(currentItems);
  }
}
