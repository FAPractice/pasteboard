import 'package:flutter/cupertino.dart';
import 'package:pasteboard/Model/ItemModel.dart';

class ThemeItemCard extends StatelessWidget {
  final Item item;

  const ThemeItemCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(10.0),
        child: Text(item.text ?? ''),
      );
}
