import 'package:flutter/cupertino.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('Add'),
      content: const CupertinoTextField(
        placeholder: 'Enter text',
      ),
      actions: <Widget>[
        CupertinoDialogAction(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.pop(context, 'Cancel');
          },
        ),
        CupertinoDialogAction(
          child: const Text('Add'),
          onPressed: () {
            // TODO: Add Item to ViewModel
            Navigator.pop(context, 'Add');
          },
        ),
      ],
    );
  }
}
