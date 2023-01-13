import 'package:flutter/material.dart';
import 'package:lid_companion/components/dialog_add_material.dart';
import 'package:lid_companion/components/dialog_farm_result.dart';
import 'package:lid_companion/materials_data.dart';
import 'package:lid_companion/components/item_material.dart';

class FarmControl extends StatefulWidget {
  const FarmControl({Key? key}) : super(key: key);

  @override
  State<FarmControl> createState() => _FarmControlState();
}

class _FarmControlState extends State<FarmControl> {
  bool checked = false;

  _addItem() {
    final Future future = Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RnDForm()),
    );
    future.then((value) {
      if (value != null) {
        var v =
            ReturnValue(matType: value.matType, mat: value.mat, qtd: value.qtd);
        materials.add(ItemMaterial(
          material: mats[v.matType]![v.mat],
          quantity: v.qtd.toString(),
          delete: removeItem,
          edit: editItem,
        ));
        setState(() => {});
      }
    });
  }

  removeItem(material) {
    setState(() {
      var item = materials
          .where((e) => (e as ItemMaterial).material == material)
          .first;
      materials.remove(item);
    });
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
    ItemMaterial(material: mats['iron']![0], quantity: '2'),
    ItemMaterial(material: mats['iron']![1], quantity: '2'),
    ItemMaterial(material: mats['iron']![2], quantity: '2'),
    ItemMaterial(material: mats['iron']![3], quantity: '2'),
    ItemMaterial(material: mats['iron']![4], quantity: '2'),
    ItemMaterial(material: mats['iron']![5], quantity: '2'),
    ItemMaterial(material: mats['iron']![6], quantity: '2'),
    ItemMaterial(material: mats['iron']![7], quantity: '2'),
    // ItemMaterial(material: mats['copper']![0], quantity: '250'),
    // ItemMaterial(material: mats['copper']![1], quantity: '250'),
    // ItemMaterial(material: mats['copper']![2], quantity: '250'),
    // ItemMaterial(material: mats['copper']![3], quantity: '250'),
    // ItemMaterial(material: mats['copper']![4], quantity: '250'),
    // ItemMaterial(material: mats['copper']![5], quantity: '250'),
    // ItemMaterial(material: mats['copper']![6], quantity: '250'),
    // ItemMaterial(material: mats['copper']![7], quantity: '250'),
    // ItemMaterial(material: mats['fiber']![0], quantity: '250'),
    // ItemMaterial(material: mats['fiber']![1], quantity: '250'),
    // ItemMaterial(material: mats['fiber']![2], quantity: '250'),
    // ItemMaterial(material: mats['fiber']![3], quantity: '250'),
    // ItemMaterial(material: mats['fiber']![4], quantity: '250'),
    // ItemMaterial(material: mats['fiber']![5], quantity: '250'),
    // ItemMaterial(material: mats['fiber']![6], quantity: '250'),
    // ItemMaterial(material: mats['fiber']![7], quantity: '250'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let it Die Companion'),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.home_outlined),
        //     onPressed: () {
        //       Navigator.pop(
        //         context,
        //         MaterialPageRoute(builder: (context) => const Dashboard()),
        //       );
        //     },
        //   ),
        // ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/app-logo.png"),
                fit: BoxFit.scaleDown)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  // title: const Text('Dashboard > Cake List'),
                  title: const Text('Cake List'),
                  subtitle: const Text('Track what you get on each run'),
                  trailing: ElevatedButton(
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
                  ),
                ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addItem(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
