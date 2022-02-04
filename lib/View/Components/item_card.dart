import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pasteboard/Model/item_model.dart';
import 'package:pasteboard/View/Components/button.dart';

class ThemeListItem extends StatefulWidget {
  final Item item;
  final bool editMode;
  final VoidCallback? onDelete;

  const ThemeListItem(
    this.item, {
    this.editMode = false,
    this.onDelete,
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
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Visibility(
                      visible: widget.editMode,
                      child: ThemeButton(
                        onTap: widget.onDelete ?? () {},
                        icon: CupertinoIcons.minus,
                        decoration: const BoxDecoration(
                          color: CupertinoColors.destructiveRed,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.only(right: 8),
                        foregroundColor: CupertinoColors.white,
                      ),
                    ),
                    Text(
                      widget.item.text ?? "",
                      style: contextTheme.textTheme.textStyle,
                      maxLines: 5,
                    ),
                  ],
                ),
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
                      style: contextTheme.textTheme.textStyle.copyWith(
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
