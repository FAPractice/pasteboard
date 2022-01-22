import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pasteboard/Model/ItemModel.dart';

class ThemeListItem extends StatefulWidget {
  final Item item;

  const ThemeListItem(
    this.item, {
    Key? key,
  }) : super(key: key);

  @override
  State<ThemeListItem> createState() => _ThemeListItemState();
}

class _ThemeListItemState extends State<ThemeListItem> {
  bool showMessage = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: widget.item.text));
        setState(() {
          showMessage = true;
        });
        Timer.periodic(const Duration(seconds: 1), (timer) {
          setState(() {
            showMessage = false;
          });
          timer.cancel();
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        color: showMessage ? CupertinoColors.activeBlue : null,
        padding: const EdgeInsets.all(12.0),
        child: Text(showMessage ? "Copied" : widget.item.text ?? ""),
      ),
    );
  }
}
