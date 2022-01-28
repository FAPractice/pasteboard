import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxDecoration? decoration;
  final Color? foregroundColor;
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
    this.onLongPress,
    required this.onTap,
    this.labelStyle,
  }) : super(key: key) {
    assert(icon != null || label != null);
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];

    if (icon != null) {
      children.add(Icon(
        icon,
        color: foregroundColor ?? const Color(0xFF000000),
        size: 16,
      ));
    }

    if (icon != null && label != null) {
      children.add(const SizedBox(width: 4));
    }

    if (label != null) {
      children.add(Text(
        label!,
        style: labelStyle?.copyWith(
              color: foregroundColor,
            ) ??
            TextStyle(
              color: foregroundColor ?? const Color(0xFF000000),
            ),
      ));
    }

    return Padding(
      padding: margin ?? const EdgeInsets.all(0),
      child: GestureDetector(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Container(
          decoration: decoration,
          padding: padding ?? const EdgeInsets.all(8),
          child: Row(children: children),
        ),
      ),
    );
  }
}
