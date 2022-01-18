import 'package:flutter/material.dart';
import 'package:lid_companion/materials_data.dart';
import 'package:lid_companion/screens/dashboard.dart';

class FarmControl extends StatefulWidget {
  const FarmControl({Key? key}) : super(key: key);

  @override
  State<FarmControl> createState() => _FarmControlState();
}

class _FarmControlState extends State<FarmControl> {
  bool checked = false;
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
          child: ListView(
            children: <Widget>[
              const ListTile(
                title: Text('Dashboard > Farm Control'),
                subtitle: Text('Select which materials you want to farm'),
              ),
              ItemMaterial(
                material: iron[2],
                checked: false,
                quantity: 0,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ItemMaterial extends StatefulWidget {
  final RnDMaterial material;
  final bool checked;
  final int quantity;

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
        trailing: Checkbox(
          value: widget.checked,
          onChanged: (bool? value) {
            setState(() {});
          },
        ),
        onTap: () {
          setState(() {});
        },
      ),
    );
  }

  _getStars(int rarity) {
    var stars = [];
    for (var i = 0; i < widget.material.rarity; i++) {
      stars.add(const Icon(
        Icons.star,
        color: Colors.yellowAccent,
      ));
    }
    return stars;
  }
}
