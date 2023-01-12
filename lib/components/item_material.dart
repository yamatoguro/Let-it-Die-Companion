// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lid_companion/materials_data.dart';

class ItemMaterial extends StatefulWidget {
  final RnDMaterial material;
  final bool checked;
  num current = 0;
  final String quantity;
  final dynamic delete;
  final dynamic edit;

  ItemMaterial(
      {Key? key,
      required this.material,
      required this.checked,
      required this.quantity,
      this.delete,
      this.edit})
      : super(key: key);

  @override
  State<ItemMaterial> createState() => _ItemMaterialState();
}

class _ItemMaterialState extends State<ItemMaterial> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      closeOnScroll: true,
      groupTag: "Material",
      dragStartBehavior: DragStartBehavior.start,
      endActionPane: ActionPane(
        extentRatio: 0.15,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              widget.delete(widget.material);
            },
            icon: Icons.delete_forever,
            autoClose: true,
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
      child: Card(
        color: Colors.grey[800]!.withOpacity(0.8),
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
                  style: const TextStyle(fontSize: 22, height: 2)),
              IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    current++;
                    widget.current = current;
                    setState(() {});
                  }),
              IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    current--;
                    widget.current = current;
                    setState(() {});
                  }),
            ],
          ),
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
