import 'package:flutter/cupertino.dart';

class ThemeAppBar extends StatelessWidget {
  final BoxDecoration? decoration;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? trailing;
  final String? title;
  final double padding;
  final double margin;
  const ThemeAppBar(
      {Key? key,
      this.decoration,
      this.leading,
      this.actions,
      this.trailing,
      this.title,
      this.padding = 0,
      this.margin = 16.0})
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

    var children = <Widget>[];

    var leadingWidgets = <Widget>[];

    if (leading != null) {
      leadingWidgets.add(leading!);
    }

    if (actions != null) {
      leadingWidgets.add(const Spacer());
      leadingWidgets.addAll(actions!);
    }

    if (leading != null || actions != null) {
      children.add(Row(
        children: leadingWidgets,
      ));
    }
    if (leading != null || actions != null && title != null) {
      children.add(SizedBox(height: padding));
    }

    if (title != null) {
      children.add(Text(
        title!,
        style: contextTheme.textTheme.navLargeTitleTextStyle,
      ));
    }

    if (trailing != null && title != null) {
      children.add(SizedBox(height: padding));
    }

    if (trailing != null) {
      children.add(trailing!);
    }

    return Container(
      width: double.infinity,
      decoration: appBarDecoration,
      padding: EdgeInsets.all(margin),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
        bottom: false,
      ),
    );
  }
}
