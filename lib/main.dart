import 'package:flutter/cupertino.dart';
import 'package:pasteboard/View/Pages/home.dart';
import 'package:pasteboard/ViewModel/ItemViewModel.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ItemsViewModel())],
      child: const MyApp(),
    ));

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
