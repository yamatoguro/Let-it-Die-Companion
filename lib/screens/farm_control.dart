import 'package:flutter/material.dart';
import 'package:lid_companion/components/dialog_add_material.dart';
import 'package:lid_companion/components/dialog_farm_result.dart';
import 'package:lid_companion/materials_data.dart';
import 'package:lid_companion/screens/dashboard.dart';
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
          checked: false,
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
    // ItemMaterial(material: mats['iron']![2], checked: false, quantity: '12'),
    // ItemMaterial(material: mats['iron']![7], checked: false, quantity: '10'),
    // ItemMaterial(material: mats['iron']![1], checked: false, quantity: '15'),
    // ItemMaterial(material: mats['iron']![0], checked: false, quantity: '22'),
    // ItemMaterial(material: mats['iron']![3], checked: false, quantity: '3'),
    // ItemMaterial(material: mats['copper']![7], checked: false, quantity: '35'),
    // ItemMaterial(material: mats['copper']![2], checked: false, quantity: '13'),
    // ItemMaterial(material: mats['copper']![5], checked: false, quantity: '14'),
    // ItemMaterial(material: mats['copper']![6], checked: false, quantity: '9'),
    // ItemMaterial(material: mats['fiber']![4], checked: false, quantity: '4'),
    // ItemMaterial(material: mats['fiber']![3], checked: false, quantity: '8'),
    // ItemMaterial(material: mats['fiber']![6], checked: false, quantity: '19'),
    // ItemMaterial(material: mats['fiber']![2], checked: false, quantity: '21'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let it Die Companion'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home_outlined),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()),
              );
            },
          ),
          // IconButton(
          //   icon: const Icon(
          //     Icons.settings_outlined,
          //   ),
          //   onPressed: () {},
          // ),
          // IconButton(
          //   icon: const Icon(
          //     Icons.help_outline,
          //   ),
          //   onPressed: () {},
          // ),
          // IconButton(
          //   icon: const Icon(
          //     Icons.schedule_outlined,
          //   ),
          //   onPressed: () {},
          // ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Yotsuyama.png"),
                fit: BoxFit.scaleDown)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  title: const Text('Dashboard > Farm Control'),
                  subtitle: const Text('Track what you get on each run'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      List<ItemMaterial> result = [];
                      for (var element in materials) {
                        result.add(element as ItemMaterial);
                      }
                      showDialog(
                        context: context,
                        builder: ((contextDialog) => FarmResult(
                              materials: result,
                            )),
                      );
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
