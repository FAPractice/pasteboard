import 'package:flutter/cupertino.dart';
import 'package:pasteboard/View/Pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Pasteboard',
      home: HomePage(),
    );
  }
}
