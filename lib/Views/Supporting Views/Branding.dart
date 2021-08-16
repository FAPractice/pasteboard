import 'package:flutter/material.dart';
import 'package:pasteboard/constants.dart';

class Branding extends StatelessWidget {
  const Branding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Center(
          child: Text("Pasteboard",
              style: kBrandingTextStyle.copyWith(color: Colors.white))),
    );
  }
}
