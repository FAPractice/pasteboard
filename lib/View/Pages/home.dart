import 'package:flutter/cupertino.dart';
import 'package:pasteboard/View/Components/app_bar.dart';
import 'package:pasteboard/View/Components/button.dart';
import 'package:pasteboard/View/Components/item_card.dart';
import 'package:pasteboard/ViewModel/item_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  build(context) {
    var contextTheme = CupertinoTheme.of(context);
    return CupertinoPageScaffold(
      child: Column(
        children: [
          ThemeAppBar(
            leading: ThemeButton(
              label: "Edit",
              icon: CupertinoIcons.pencil,
              padding: const EdgeInsets.all(16),
              foregroundColor: contextTheme.primaryContrastingColor,
              onTap: () {},
            ),
            actions: [
              ThemeButton(
                icon: CupertinoIcons.add,
                padding: const EdgeInsets.all(16),
                foregroundColor: contextTheme.primaryContrastingColor,
                onTap: Provider.of<ItemsViewModel>(context).addItem,
              ),
            ],
            title: 'Pasteboard',
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(6),
              itemCount: Provider.of<ItemsViewModel>(context).items.length,
              itemBuilder: (ctx, idx) => ThemeListItem(
                  Provider.of<ItemsViewModel>(context).items[idx]),
            ),
          ),
        ],
      ),
    );
  }
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