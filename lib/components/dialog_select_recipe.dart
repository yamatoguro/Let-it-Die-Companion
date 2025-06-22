// ignore_for_file: unused_field

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lid_companion/models/weapon.dart';

class DialogSelectRecipe extends StatefulWidget {
  final String okButton;
  final String cancelButton;

  const DialogSelectRecipe(
      {Key? key, this.okButton = 'Ok', this.cancelButton = 'Cancel'})
      : super(key: key);

  @override
  State<DialogSelectRecipe> createState() => _DialogSelectRecipeState();
}

class _DialogSelectRecipeState extends State<DialogSelectRecipe> {
  List _weapons = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/weapons.json');
    final data = await json.decode(response);
    setState(() {
      _weapons = data['Weapons'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: const Text('Select Blue Print'),
      content: SizedBox(
        height: 350.0,
        width: 300.0,
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ..._getBPs(),
              ],
            ),
          ),
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: Text(widget.cancelButton),
        ),
        ElevatedButton(
          child: Text(widget.okButton),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }

  List<Card> _getBPs() {
    List<Card> list = [];
    Iterable l = json.decode('../../assets/json/weapons.json');
    for (var element in l) {
      if (kDebugMode) {
        print(element);
      }
      // list.add(Card(
      //   color: Colors.grey[800]!.withOpacity(0.5),
      //   child: ListTile(
      //     leading: Image.asset('assets/images/IconBP.png'),
      //     title: Text('Cake Recipe'),
      //     subtitle: Text('Control your farm using R&D requirement'),
      //     onTap: () {},
      //   ),
      // ));
    }
    return list;
  }
}
