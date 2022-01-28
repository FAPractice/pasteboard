import 'package:flutter/cupertino.dart';
import 'package:pasteboard/ViewModel/item_viewmodel.dart';
import 'package:provider/provider.dart';

class AddCustomPrompt extends StatelessWidget {
  const AddCustomPrompt({Key? key}) : super(key: key);

  @override
  build(BuildContext context) => CupertinoDialogAction(
        child: CupertinoTextField(
          placeholder: "Enter Text",
          onChanged: (val) =>
              Provider.of<ItemsViewModel>(context).customAddText = val,
        ),
        onPressed: () {
          Provider.of<ItemsViewModel>(context).addCustomItem();
          Navigator.pop(context);
        },
      );
}
