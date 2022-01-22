import 'package:flutter/cupertino.dart';

class AddPrompt extends StatefulWidget {
  const AddPrompt({Key? key}) : super(key: key);
  @override
  State<AddPrompt> createState() => _AddPromptState();
}

class _AddPromptState extends State<AddPrompt> {
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
