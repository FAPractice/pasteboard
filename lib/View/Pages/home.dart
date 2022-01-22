import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pasteboard/Model/ItemModel.dart';
import 'package:pasteboard/View/Components/item_card.dart';
import 'package:pasteboard/ViewModel/ItemViewModel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  build(context) => CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Home'),
          trailing: CupertinoButton(
            child: const Icon(CupertinoIcons.add),
            onPressed: Provider.of<ItemsViewModel>(context).addItem,
          ),
        ),
        child: ListView.builder(
          itemCount: Provider.of<ItemsViewModel>(context).items.length,
          itemBuilder: (ctx, idx) =>
              ThemeListItem(Provider.of<ItemsViewModel>(context).items[idx]),
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