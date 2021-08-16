import 'package:flutter/material.dart';
import 'package:pasteboard/Views/sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => constraints.maxWidth > 600
            ? Row(children: [
                Sidebar(
                  orientation: SidebarOrientation.Vertical,
                ),
                Expanded(
                    child: Container(
                  color: Colors.white,
                ))
              ])
            : Column(children: [
                Sidebar(
                  orientation: SidebarOrientation.Vertical,
                ),
                Expanded(
                    child: Container(
                  color: Colors.white,
                ))
              ]),
      ),
    );
  }
}
