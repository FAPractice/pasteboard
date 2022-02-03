import 'package:flutter/cupertino.dart';
import 'package:pasteboard/View/Components/app_bar.dart';
import 'package:pasteboard/View/Components/button.dart';
import 'package:pasteboard/View/Components/item_card.dart';
import 'package:pasteboard/ViewModel/item_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  build(context) {
    var contextTheme = CupertinoTheme.of(context);

    var contextProvider = Provider.of<ItemsViewModel>(context);

    var appBar = ThemeAppBar(
      leading: ThemeButton(
        label: contextProvider.editMode ? "Done" : "Edit",
        icon: CupertinoIcons.pencil,
        padding: const EdgeInsets.all(0),
        foregroundColor: contextTheme.primaryContrastingColor,
        decoration: BoxDecoration(color: contextTheme.primaryColor),
        size: contextTheme.textTheme.navActionTextStyle.fontSize,
        onTap: contextProvider.toggleEditMode,
      ),
      actions: [
        ThemeButton(
          icon: contextProvider.editMode
              ? CupertinoIcons.check_mark
              : CupertinoIcons.add,
          padding: const EdgeInsets.all(0),
          foregroundColor: contextTheme.primaryContrastingColor,
          decoration: BoxDecoration(color: contextTheme.primaryColor),
          size: contextTheme.textTheme.navActionTextStyle.fontSize,
          onTap: contextProvider.addItem,
        ),
      ],
      title: 'Pasteboard',
      padding: 8.0,
    );

    return CupertinoPageScaffold(
      child: Column(
        children: [
          appBar,
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(6),
              itemCount: contextProvider.items.length,
              itemBuilder: (ctx, idx) => ThemeListItem(
                contextProvider.items[idx],
                editMode: contextProvider.editMode,
                onDelete: () => contextProvider.removeAtIndex(idx),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
