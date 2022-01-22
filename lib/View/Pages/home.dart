import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pasteboard/Model/ItemModel.dart';
import 'package:pasteboard/View/Components/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var items = <String>[];

  @override
  build(context) => CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Home'),
          trailing: CupertinoButton(
            child: const Icon(CupertinoIcons.add),
            onPressed: () => setState(() {
              items.add("New Item ${items.length + 1}");
            }),
          ),
        ),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (ctx, idx) => ThemeListItem(Item(text: items[idx])),
        ),
      );
}












// Random list of english words
    // "Hello",
    // "World",
    // "Sup",
    // "Yo",
    // "How",
    // "Are",
    // "You",
    // "Today",
    // "You",
    // "Are",
    // "So",
    // "Cool",
    // "I",
    // "Love",
    // "You",
    // "So",
    // "Much",