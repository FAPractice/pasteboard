import 'package:flutter/cupertino.dart';

class ThemeButton extends StatefulWidget {
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxDecoration? decoration;
  final Color? foregroundColor;
  final double? size;
  final IconData? icon;
  final String? label;
  final TextStyle? labelStyle;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;

  ThemeButton({
    Key? key,
    this.padding,
    this.decoration,
    this.foregroundColor,
    this.margin,
    this.icon,
    this.label,
    this.size,
    this.onLongPress,
    required this.onTap,
    this.labelStyle,
  }) : super(key: key) {
    assert(icon != null || label != null);
  }

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    var contextTheme = CupertinoTheme.of(context);

    if (widget.icon != null) {
      children.add(Icon(
        widget.icon,
        color: widget.foregroundColor ?? const Color(0xFF000000),
        size: widget.size ??
            contextTheme.textTheme.actionTextStyle.fontSize ??
            16.0,
      ));
    }

    if (widget.icon != null && widget.label != null) {
      children.add(const SizedBox(width: 4));
    }

    if (widget.label != null) {
      children.add(Text(
        widget.label!,
        style: widget.labelStyle?.copyWith(
              color: widget.foregroundColor,
            ) ??
            TextStyle(
              fontSize: widget.size ??
                  contextTheme.textTheme.actionTextStyle.fontSize,
              color: widget.foregroundColor ?? const Color(0xFF000000),
            ),
      ));
    }

    return Padding(
      padding: widget.margin ?? const EdgeInsets.all(0),
      child: GestureDetector(
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        child: Container(
          decoration: widget.decoration,
          padding: widget.padding ?? const EdgeInsets.all(8),
          child: Row(children: children),
        ),
      ),
    );
  }
}
