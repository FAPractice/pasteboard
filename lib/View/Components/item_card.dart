import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pasteboard/Model/item_model.dart';

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
    var contextTheme = CupertinoTheme.of(context);
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
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
          decoration: BoxDecoration(
            color: contextTheme.primaryContrastingColor,
            boxShadow: [
              BoxShadow(
                  color: CupertinoColors.black.withOpacity(0.24),
                  offset: const Offset(0, 2),
                  blurRadius: 10),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          clipBehavior: Clip.hardEdge,
          duration: const Duration(milliseconds: 200),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.item.text ?? ""),
              ),
              Visibility(
                visible: showMessage,
                child: Positioned.fill(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerLeft,
                    color: contextTheme.primaryColor,
                    child: Text(
                      "Copied",
                      style: contextTheme.textTheme.actionTextStyle.copyWith(
                          color: contextTheme.primaryContrastingColor),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
