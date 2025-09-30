import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lid_companion/components/dialog_add_material.dart';
import 'package:lid_companion/components/dialog_farm_result.dart';
import 'package:lid_companion/materials_data.dart';
import 'package:lid_companion/components/item_material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FarmControl extends StatefulWidget {
  const FarmControl({Key? key}) : super(key: key);

  @override
  State<FarmControl> createState() => _FarmControlState();
}

class _FarmControlState extends State<FarmControl> {
  bool checked = false;

  @override
  void initState() {
    super.initState();
    _loadMaterials();
  }

  Future<void> _saveMaterials() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> matsJson = materials
        .map((e) => jsonEncode({
              'matType': (e as ItemMaterial).type,
              'mat': (e).material.name,
              'qtd': (e).quantity,
            }))
        .toList();
    await prefs.setStringList('materials', matsJson);
  }

  Future<void> _loadMaterials() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? matsJson = prefs.getStringList('materials');
    if (matsJson != null) {
      setState(() {
        materials = matsJson.map((str) {
          var map = jsonDecode(str);
          var mat =
              mats[map['matType']]!.firstWhere((m) => m.name == map['mat']);
          return ItemMaterial(
            material: mat,
            quantity: map['qtd'],
            delete: removeItem,
            type: map['matType'],
          );
        }).toList();
      });
    }
  }

  _addItem() async {
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
          type: v.matType,
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
            type: v.matType,
            delete: removeItem,
            edit: editItem,
          );
          materials.remove(item);
          materials.add(newItem);
        } else {
          materials.add(newItem);
        }
        setState(() => {});
        await _saveMaterials();
      }
    });
  }

  removeItem(material) async {
    setState(() {
      var item = materials
          .where((e) => (e as ItemMaterial).material == material)
          .first;
      materials.remove(item);
    });
    await _saveMaterials();
  }

  editItem(material) async {
    setState(() {
      var item = materials
          .where((e) => (e as ItemMaterial).material == material)
          .first;

      materials.remove(item);
    });
    await _saveMaterials();
  }

  List<Widget> materials = [
    // ItemMaterial(material: mats['dod']![8], quantity: '2'),
    // ItemMaterial(material: mats['we']![8], quantity: '2'),
    // ItemMaterial(material: mats['cw']![8], quantity: '2'),
    // ItemMaterial(material: mats['milk']![8], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![2], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![3], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![4], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![5], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![6], quantity: '2'),
    // ItemMaterial(material: mats['aluminum']![7], quantity: '2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let it Die Companion'),
        actions: const [
          // IconButton(
          //   onPressed: () {
          //     _addItem();
          //   },
          //   icon: const Icon(Icons.add_circle_outline_outlined),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: OutlinedButton(
          //     style: OutlinedButton.styleFrom(
          //       shape: const CircleBorder(),
          //       padding: const EdgeInsets.all(0),
          //       side: const BorderSide(
          //         color: Colors.deepPurpleAccent,
          //         width: 2.0,
          //       ),
          //     ),
          //     onPressed: () {
          //       _addItem();
          //     },
          //     child: const Icon(Icons.add),
          //   ),
          // ),
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
                                  material: m,
                                  quantity: quantity.toString(),
                                  delete: removeItem,
                                  edit: editItem,
                                  type: e.type);
                              materials.add(e);
                            }
                          });
                          _saveMaterials(); // Adiciona salvamento após atualizar a lista
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
