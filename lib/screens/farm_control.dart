import 'package:flutter/material.dart';
import 'package:lid_companion/components/dialog_add_material.dart';
import 'package:lid_companion/components/dialog_farm_result.dart';
import 'package:lid_companion/materials_data.dart';
import 'package:lid_companion/components/item_material.dart';
import 'package:lid_companion/screens/info_screen.dart';
import 'package:lid_companion/service/database_service.dart';

import '../models/cake_item.dart';
import '../models/rnd_material.dart';

class FarmControl extends StatefulWidget {
  const FarmControl({Key? key}) : super(key: key);

  @override
  State<FarmControl> createState() => _FarmControlState();
}

class _FarmControlState extends State<FarmControl> {
  bool checked = false;

  _loadItems() async {
    List<CakeItem> items = await DatabaseService.cakeItems();
    debugPrint(items.length.toString());
    if (items.isNotEmpty) {
      for (CakeItem e in items) {
        ItemMaterial newItem = ItemMaterial(
          material: mats[e.type]![e.rarity],
          quantity: e.quantity.toString(),
          delete: removeItem,
          edit: editItem,
        );
        materials.add(newItem);
        debugPrint(newItem.material.name);
      }
      setState(() => {});
    } // else {
    //   var ci = CakeItem(
    //     id: 0,
    //     type: 'tuber',
    //     rarity: 3,
    //     quantity: 2,
    //   );
    //   ItemMaterial newItem = ItemMaterial(
    //     material: mats[ci.type]![ci.rarity],
    //     quantity: ci.quantity.toString(),
    //     delete: removeItem,
    //     edit: editItem,
    //   );
    //   await DatabaseService.insertCakeItem(ci);
    //   materials.add(newItem);
    //   setState(() {});
    // }
  }

  _addItem() {
    final Future future = Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RnDForm()),
    );
    future.then((value) async {
      if (value != null) {
        var v =
            ReturnValue(matType: value.matType, mat: value.mat, qtd: value.qtd);

        ItemMaterial newItem = ItemMaterial(
          material: mats[v.matType]![v.mat],
          quantity: v.qtd.toString(),
          delete: removeItem,
          edit: editItem,
        );
        if (materials.any(
            (item) => (item as ItemMaterial).material == newItem.material)) {
          var item = materials
              .where((e) =>
                  (e as ItemMaterial).material.name == newItem.material.name)
              .first;
          newItem = ItemMaterial(
            material: mats[v.matType]![v.mat],
            quantity: (int.parse((item as ItemMaterial).quantity) +
                    int.parse(newItem.quantity))
                .toString(),
            delete: removeItem,
            edit: editItem,
          );
          materials.remove(item);
          materials.add(newItem);
          await DatabaseService.updateCakeItem(
              CakeItem(null, type: v.matType, rarity: v.mat, quantity: v.qtd));
        } else {
          materials.add(newItem);
          await DatabaseService.insertCakeItem(
              CakeItem(null, type: v.matType, rarity: v.mat, quantity: v.qtd));
        }
        setState(() => {debugPrint(materials.first.toString())});
      }
    });
  }

  removeItem(material) async {
    ItemMaterial item = materials
        .where((e) => (e as ItemMaterial).material == material)
        .first as ItemMaterial;
    await DatabaseService.deleteCakeItem(CakeItem(null,
            type: item.material.type,
            rarity: item.material.rarity,
            quantity: item.material.quantity))
        .then((value) => debugPrint('Exclusão'));
    List<CakeItem> items = await DatabaseService.cakeItems();
    debugPrint(items.length.toString());
    materials.remove(item);
    setState(() {});
  }

  editItem(material) {
    setState(() {
      var item = materials
          .where((e) => (e as ItemMaterial).material == material)
          .first;

      materials.remove(item);
    });
  }

  List<Widget> materials = [
    // ItemMaterial(material: mats['tuber']![3], quantity: '2'),
    // ItemMaterial(material: mats['dod']![7], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![2], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![3], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![4], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![5], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![6], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![7], quantity: '2'),
  ];

  @override
  Widget build(BuildContext context) {
    if (materials.isEmpty) {
      _loadItems();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let it Die Companion'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.help_outline,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InfoScreen(),
                  ));
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fundo-sem-logo.jpg"),
                fit: BoxFit.fill)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                    leading: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        padding: const EdgeInsets.all(12),
                        side: const BorderSide(
                          color: Colors.teal,
                          width: 2.5,
                        ),
                      ),
                      onPressed: () {
                        _addItem();
                      },
                      child: const Text(
                        'Add Item',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.tealAccent),
                      ),
                    ),
                    title: const Text('Cake List'),
                    subtitle: const Text('Track what you get on each run'),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(
                          color: Colors.deepPurple,
                          width: 2.0,
                        ),
                      ),
                      onPressed: () {
                        List<ItemMaterial> result = [];
                        for (var element in materials) {
                          result.add(element as ItemMaterial);
                        }
                        Future future = showDialog(
                          context: context,
                          builder: ((contextDialog) => FarmResult(
                                materials: result,
                              )),
                        );
                        future.then((value) {
                          setState(() {
                            List<Widget> mats = materials
                                .where((e) =>
                                    int.parse((e as ItemMaterial).quantity) >
                                    e.current)
                                .toList();
                            materials = [];
                            for (var e in mats) {
                              num quantity =
                                  int.parse((e as ItemMaterial).quantity) -
                                      e.current;
                              RnDMaterial m = e.material;
                              e = ItemMaterial(
                                  material: m, quantity: quantity.toString());
                              materials.add(e);
                            }
                          });
                        });
                      },
                      child: const Text('End run'),
                    )),
                Expanded(
                  child: ListView(
                    children: [...materials],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => _addItem(),
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
