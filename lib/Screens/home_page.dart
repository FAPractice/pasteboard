import 'package:flutter/material.dart';
import 'package:pasteboard/Widgets/sidebar.dart';
import 'package:pasteboard/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => constraints.maxWidth < 600
            ? Column(
                children: [
                  Container(height: 128, child: SidebarView()),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: kColorLightActivity,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kBorderRadiusActivity),
                          topRight: Radius.circular(kBorderRadiusActivity),
                        ),
                      ),
                    ),
                  )
                ],
              )
            : Row(
                children: [
                  Container(width: 256, child: SidebarView()),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: kColorLightActivity,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kBorderRadiusActivity),
                          bottomLeft: Radius.circular(kBorderRadiusActivity),
                        ),
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
