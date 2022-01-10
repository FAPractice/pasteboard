import 'dart:async';
import 'package:pasteboard/Model/ItemModel.dart';
import 'package:pasteboard/View/Components/item_card.dart';

class ItemsViewModel {
  List<Item> _items = [];

  // TODO: Try StreamController
  getItemCards() => _items.map((e) => ThemeItemCard(e));
  
  addItem(Item item) => _items.add(item);
}
