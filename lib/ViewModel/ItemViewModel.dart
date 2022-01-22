import 'package:flutter/cupertino.dart';
import 'package:pasteboard/Model/ItemModel.dart';
import 'package:pasteboard/View/Components/item_card.dart';

class ItemsViewModel with ChangeNotifier {
  List<Item> items = [];

  // TODO: Try StreamController
  List<Widget> getItemCards() => items.map((e) => ThemeItemCard(e)).toList();

  addItem(Item item) {
    items.add(item);
    notifyListeners();
  }
}
