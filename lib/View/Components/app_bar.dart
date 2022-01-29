import 'package:flutter/cupertino.dart';

class ThemeAppBar extends StatelessWidget {
  final BoxDecoration? decoration;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? trailing;
  final String? title;
  final double padding;
  const ThemeAppBar(
      {Key? key,
      this.decoration,
      this.leading,
      this.actions,
      this.trailing,
      this.title,
      this.padding = 16.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var contextTheme = CupertinoTheme.of(context);

    var appBarDecoration = decoration ??
        BoxDecoration(
          color: contextTheme.primaryColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.black.withOpacity(0.24),
              offset: const Offset(0, 6),
              blurRadius: 20,
            ),
          ],
        );

    var topActions = <Widget>[];
    var headingPadding = EdgeInsets.all(padding);

    if (leading != null) {
      headingPadding = headingPadding.copyWith(top: 0);
      topActions.add(leading!);
    }

    if (actions != null) {
      headingPadding = headingPadding.copyWith(top: 0);
      topActions.add(const Spacer());
      topActions.addAll(actions!);
    }

    if (trailing != null) {
      headingPadding = headingPadding.copyWith(bottom: 0);
    }

    Widget? titleWidget = title != null
        ? Padding(
            padding: headingPadding,
            child: Text(
              "Pasteboard",
              style: contextTheme.textTheme.navLargeTitleTextStyle,
            ),
          )
        : null;

    var items = <Widget>[Row(children: topActions)];

    if (titleWidget != null) {
      items.add(titleWidget);
    }

    if (trailing != null) {
      items.add(trailing!);
    }

    return Container(
      width: double.infinity,
      decoration: appBarDecoration,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items,
        ),
        bottom: false,
      ),
    );
  }
}
