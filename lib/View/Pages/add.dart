import 'package:flutter/cupertino.dart';

class AddCustomPrompt extends StatefulWidget {
  const AddCustomPrompt({Key? key}) : super(key: key);
  @override
  State<AddCustomPrompt> createState() => _AddCustomPromptState();
}

class _AddCustomPromptState extends State<AddCustomPrompt> {
  var text = '';

  @override
  build(BuildContext context) => CupertinoDialogAction(
        child: const CupertinoTextField(
          placeholder: "Enter Text",
          // onChanged: (val) => text = val,
        ),
        onPressed: () {
          Navigator.pop(context, text);
        },
      );
}
