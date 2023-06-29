// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../models/rnd_material.dart';

class DialogItemInfo extends StatelessWidget {
  final String buttonText;
  RnDMaterial material;
  DialogItemInfo({Key? key, this.buttonText = 'Close', required this.material})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Image.network(
        material.urlFullImage,
        alignment: Alignment.center,
        scale: 1,
        loadingBuilder: (context, child, loadingProgress) {
          return child;
        },
      ),
      content: SizedBox(
        height: 200.0,
        width: 300.0,
        child: Expanded(
          child: material.where,
        ),
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
