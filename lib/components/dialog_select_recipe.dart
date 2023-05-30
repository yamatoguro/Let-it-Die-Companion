import 'package:flutter/material.dart';

class DialogSelectRecipe extends StatelessWidget {
  final String buttonText;

  const DialogSelectRecipe({Key? key, this.buttonText = 'Ok'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: const Text('Select Blue Print'),
      content: const SizedBox(
        height: 350.0,
        width: 300.0,
        child: null,
      ),
      actions: <Widget>[
        ElevatedButton(
          child: Text(buttonText),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );
  }
}
