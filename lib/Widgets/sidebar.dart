import 'package:flutter/material.dart';

class SidebarView extends StatelessWidget {
  const SidebarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 48),
        Text(
          "Pasteboard",
          style: Theme.of(context)
              .textTheme
              .headline3
              ?.copyWith(color: Colors.white),
        )
      ],
    );
  }
}
