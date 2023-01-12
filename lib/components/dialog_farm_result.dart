import 'package:flutter/material.dart';
import 'package:lid_companion/components/item_material.dart';
import 'package:lid_companion/components/result_item.dart';

class FarmResult extends StatefulWidget {
  final List<ItemMaterial> materials;

  const FarmResult({
    Key? key,
    required this.materials,
  }) : super(key: key);

  @override
  State<FarmResult> createState() => _FarmResultState();
}

class _FarmResultState extends State<FarmResult> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: const Text('Results'),
      content: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(bottom: 20, left: 0, right: 0, top: 0),
            padding: EdgeInsets.zero,
            height: 320.0,
            width: 300.0,
            child: Expanded(
              child: ListView(
                children: [..._getMaterialResult()],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Total storage used on this run: ",
                style: TextStyle(fontSize: 20, height: 1),
              ),
              Text(
                _total(),
                style: const TextStyle(
                    fontSize: 20, height: 1, color: Colors.greenAccent),
              ),
            ],
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: const Text("Close"),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );
  }

  _getMaterialResult() {
    List<ResultItem> materialResult = [
      // ResultItem(material: mats['iron']![0], quantity: '12'),
      // ResultItem(material: mats['iron']![1], quantity: '12'),
      // ResultItem(material: mats['iron']![2], quantity: '12'),
    ];
    for (var e in widget.materials) {
      materialResult
          .add(ResultItem(material: e.material, quantity: e.quantity));
    }
    return materialResult;
  }

  _total() {
    num total = 0;
    for (var element in widget.materials) {
      total += int.parse(element.quantity);
    }
    return total.toString();
  }
}
