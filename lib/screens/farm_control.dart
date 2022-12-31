import 'package:flutter/material.dart';
import 'package:lid_companion/components/dialog_add_material.dart';
import 'package:lid_companion/materials_data.dart';
import 'package:lid_companion/screens/dashboard.dart';

class FarmControl extends StatefulWidget {
  const FarmControl({Key? key}) : super(key: key);

  @override
  State<FarmControl> createState() => _FarmControlState();
}

class _FarmControlState extends State<FarmControl> {
  bool checked = false;
  List<Widget> materials = [
    // ItemMaterial(material: mats['iron']![2], checked: false, quantity: 12),
    ItemMaterial(material: mats['iron']![7], checked: false, quantity: '10'),
    // ItemMaterial(material: mats['iron']![1], checked: false, quantity: 15),
    // ItemMaterial(material: mats['iron']![0], checked: false, quantity: 22),
    // ItemMaterial(material: mats['iron']![3], checked: false, quantity: 3),
    // ItemMaterial(material: mats['copper']![7], checked: false, quantity: 35),
    // ItemMaterial(material: mats['copper']![2], checked: false, quantity: 13),
    // ItemMaterial(material: mats['copper']![5], checked: false, quantity: 14),
    // ItemMaterial(material: mats['copper']![6], checked: false, quantity: 9),
    // ItemMaterial(material: mats['fiber']![4], checked: false, quantity: 4),
    // ItemMaterial(material: mats['fiber']![3], checked: false, quantity: 8),
    // ItemMaterial(material: mats['fiber']![6], checked: false, quantity: 19),
    // ItemMaterial(material: mats['fiber']![2], checked: false, quantity: 21),
  ];

  _addItem() {
    final Future future = Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RnDForm()),
    );
    future.then((value) {
      var v = ReturnValue(mat: value.mat, qtd: value.qtd);
      materials.add(ItemMaterial(
        material: mats[v.mat]![2],
        checked: false,
        quantity: v.qtd,
      ));
      setState(() => debugPrint(value.mat + '/' + value.qtd));
    });
  }

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                title: const Text('Dashboard > Farm Control'),
                subtitle: const Text('Track what you get on each run'),
                trailing: ElevatedButton(
                  onPressed: () {},
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addItem(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ItemMaterial extends StatefulWidget {
  final RnDMaterial material;
  final bool checked;
  final String quantity;

  const ItemMaterial(
      {Key? key,
      required this.material,
      required this.checked,
      required this.quantity})
      : super(key: key);

  @override
  State<ItemMaterial> createState() => _ItemMaterialState();
}

class _ItemMaterialState extends State<ItemMaterial> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          widget.material.url,
          alignment: Alignment.center,
          scale: .4,
        ),
        title: Text(widget.material.name),
        subtitle: Row(
          children: [..._getStars(widget.material.rarity)],
        ),
        trailing: Wrap(
          children: [
            Text('$current/' + widget.quantity.toString(),
                style: TextStyle(fontSize: 32, height: 1.5)),
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  current++;
                  setState(() {});
                }),
            IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  current--;
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }

  _getStars(int rarity) {
    var stars = [];
    for (var i = 0; i < widget.material.rarity; i++) {
      stars.add(const Icon(
        Icons.star,
        color: Colors.yellowAccent,
        size: 15,
      ));
    }
    return stars;
  }
}
