import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pasteboard/Model/item_model.dart';

class ItemsViewModel with ChangeNotifier {
  final List<Item> _items = [];

  List<Item> get items => _items;

  var _customAddText = "";

  String get customAddText => _customAddText;

  set customAddText(val) {
    _customAddText = val;
    notifyListeners();
  }

  void addCustomItem() {
    _items.insert(0, Item(text: _customAddText));
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }

  void addItem() async {
    var item = await Clipboard.getData('text/plain');
    if (item != null) {
      items.insert(0, Item(text: item.text!));
    }
    notifyListeners();
  }
}
