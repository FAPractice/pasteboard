import 'package:flutter/material.dart';
import 'package:pasteboard/Screens/home_page.dart';
import 'package:pasteboard/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kColorLightPrimary,
        primaryColor: kColorLightActivity,
        cardColor: kColorLightCard,
        textTheme: kTextThemeLightNormal,
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: kColorDarkPrimary,
        primaryColor: kColorDarkActivity,
        cardColor: kColorDarkCard,
        textTheme: kTextThemeDarkNormal,
      ),
      home: HomePage(),
    );
  }
}
