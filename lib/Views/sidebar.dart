import 'package:flutter/material.dart';
import 'package:pasteboard/Views/Supporting%20Views/Branding.dart';

enum SidebarOrientation { Horizontal, Vertical }

class Sidebar extends StatelessWidget {
  final SidebarOrientation orientation;
  const Sidebar({Key? key, this.orientation = SidebarOrientation.Vertical})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: orientation == SidebarOrientation.Horizontal ? null : 192,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: 32),
          Branding(),
        ],
      ),
    );
  }
}
