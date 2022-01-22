import 'package:flutter/cupertino.dart';
import 'package:pasteboard/View/Components/item_card.dart';
import 'package:pasteboard/View/Pages/add.dart';
import 'package:pasteboard/ViewModel/ItemViewModel.dart';
import 'package:provider/provider.dart';

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
          SliverList(
            delegate: SliverChildListDelegate([
              const Text("Hello 1"),
              const Text("Hello 1"),
              const Text("Hello 1"),
              const Text("Hello 1"),
              const Text("Hello 1"),
              const Text("Hello 1"),
              const Text("Hello 1"),
              const Text("Hello 1"),
            ]),
          )
        ],
      ),
    );
  }
}

                  // Provider.of<ItemsViewModel>(context).getItemCards()),