// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:lid_companion/materials_data.dart';

class DialogItemInfo extends StatelessWidget {
  final String buttonText;
  RnDMaterial material;
  DialogItemInfo({Key? key, this.buttonText = 'Ok', required this.material})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text(material.name),
      content: SizedBox(
        height: 350.0,
        width: 300.0,
        child: Column(
          children: [
            Image.network(
              material.url,
              alignment: Alignment.center,
              scale: .4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [..._getStars(material.rarity), const Text('\n')],
            ),
            Expanded(
              child: material.where,
            ),
          ],
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

  _getStars(int rarity) {
    var stars = [];
    for (var i = 0; i < rarity; i++) {
      stars.add(const Icon(
        Icons.star,
        color: Colors.yellowAccent,
        size: 15,
      ));
    }
    return stars;
  }
}
