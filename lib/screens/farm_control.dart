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
    if (items.isNotEmpty) {
      for (CakeItem e in items) {
        ItemMaterial newItem = ItemMaterial(
          id: e.id,
          material: mats[e.type]![e.rarity - 1],
          quantity: e.quantity.toString(),
          delete: removeItem,
          edit: editItem,
          current: e.current,
        );
        materials.add(newItem);
      }
      setState(() => {});
    }
  }

  _addItem() {
    final Future future = Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RnDForm()),
    );
    future.then((value) async {
      if (value != null) {
        var v = ReturnValue(
            matType: value.matType, rarity: value.rarity, qtd: value.qtd);

        ItemMaterial newItem = ItemMaterial(
          id: DatabaseService.getID(mats[v.matType]![v.rarity]),
          material: mats[v.matType]![v.rarity - 1],
          quantity: v.qtd.toString(),
          current: 0,
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
            id: DatabaseService.getID(mats[v.matType]![v.rarity - 1]),
            material: mats[v.matType]![v.rarity],
            quantity: (int.parse((item as ItemMaterial).quantity) +
                    int.parse(newItem.quantity))
                .toString(),
            current: item.current,
            delete: removeItem,
            edit: editItem,
          );
          materials.remove(item);
          materials.add(newItem);
          await DatabaseService.updateCakeItem(CakeItem(
              id: DatabaseService.getID(mats[v.matType]![v.rarity - 1]),
              type: v.matType,
              rarity: v.rarity,
              quantity: v.qtd,
              current: item.current as int));
        } else {
          materials.add(newItem);
          await DatabaseService.insertCakeItem(CakeItem(
              id: DatabaseService.getID(mats[v.matType]![v.rarity - 1]),
              type: v.matType,
              rarity: v.rarity,
              quantity: v.qtd,
              current: 0));
        }
      }
    });
  }

  removeItem(material) async {
    ItemMaterial item = materials
        .where((e) => (e as ItemMaterial).material == material)
        .first as ItemMaterial;
    await DatabaseService.deleteCakeItem(CakeItem(
            id: item.id,
            type: item.material.type,
            rarity: item.material.rarity,
            quantity: int.parse(item.quantity),
            current: 0))
        .then((value) => materials.remove(item));
    List<CakeItem> items = await DatabaseService.cakeItems();
    setState(() {});
  }

  editItem(material, bool add) async {
    ItemMaterial item = materials
        .where((e) => (e as ItemMaterial).material == material)
        .first as ItemMaterial;
    await DatabaseService.updateCakeItem(CakeItem(
            id: item.id,
            type: item.material.type,
            rarity: item.material.rarity,
            quantity: int.parse(item.quantity),
            current: item.current as int))
        .then((value) => setState(() {}));
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
                            List<Widget> matsList = materials
                                .where((e) =>
                                    int.parse((e as ItemMaterial).quantity) >
                                    e.current)
                                .toList();
                            materials = [];
                            for (var e in matsList) {
                              num quantity =
                                  int.parse((e as ItemMaterial).quantity) -
                                      e.current;
                              RnDMaterial m = e.material;
                              e = ItemMaterial(
                                id: DatabaseService.getID(
                                    mats[m.type]![m.rarity]),
                                material: m,
                                quantity: quantity.toString(),
                                current: e.current,
                              );
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
    );
  }
}
