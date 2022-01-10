import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasteboard/View/Pages/add.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: const Text("Pasteboard"),
            trailing: CupertinoButton(
              child: const Icon(CupertinoIcons.add),
              onPressed: () => showCupertinoDialog(
                builder: (context) => const AddPage(),
                context: context,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
