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
      vertical: contextProvider.desktopLayout,
      decoration: BoxDecoration(color: contextTheme.primaryColor),
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

    var content = Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: contextTheme.scaffoldBackgroundColor,
          borderRadius: contextProvider.desktopLayout
              ? const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                )
              : const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.black.withOpacity(0.24),
              offset: const Offset(0, 6),
              blurRadius: 20,
            ),
          ],
        ),
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
    );

    var children = contextProvider.desktopLayout
        ? Row(children: [appBar, content])
        : Column(children: [appBar, content]);

    return CupertinoPageScaffold(
      backgroundColor: contextTheme.primaryColor,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 800 &&
            contextProvider.desktopLayout == false) {
          contextProvider.setDesktopLayout(true);
        } else if (constraints.maxWidth < 800 &&
            contextProvider.desktopLayout == true) {
          contextProvider.setDesktopLayout(false);
        }
        return children;
      }),
    );
  }
}
