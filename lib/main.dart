import 'package:flutter/cupertino.dart';
import 'package:pasteboard/View/Pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  build(context) => const CupertinoApp(home: HomeScreen());
}
