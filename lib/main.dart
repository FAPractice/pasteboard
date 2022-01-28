import 'package:flutter/cupertino.dart';
import 'package:pasteboard/View/Pages/home.dart';
import 'package:pasteboard/ViewModel/item_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ItemsViewModel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  build(context) => const CupertinoApp(home: HomeScreen());
}
