// ignore_for_file: prefer_typing_uninitialized_variables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:lid_companion/materials_data.dart';

class RnDForm extends StatefulWidget {
  RnDForm({Key? key}) : super(key: key);

  final TextEditingController _controllerConta = TextEditingController();

  @override
  _RnDFormState createState() => _RnDFormState();
}

class _RnDFormState extends State<RnDForm> {
  String? matType;
  String? mat;
  List<String> materials = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New RnD'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: DropdownButton<String>(
              hint: const Text('Material type'),
              isExpanded: true,
              value: matType,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 24,
              style: const TextStyle(fontSize: 24),
              onChanged: (String? newValue) {
                setState(() {
                  if (newValue != null) {
                    String type = processMatType(newValue);
                    matType = newValue;
                    var list = mats[type]!;
                    var v;
                    mat = v;
                    materials = [];
                    for (var item in list) {
                      materials.add(item.name);
                    }
                  }
                });
              },
              items: <String>[
                'Aluminum',
                'Copper',
                'Iron',
                'Oil',
                'Wood',
                'Fiber',
                'Tuber Metal',
                'D.O.D. ARMS Rare Metal',
                'War Ensemble Rare Metal',
                'Candle Wolf Rare Metal',
                'M.I.L.K. Rare Metal',
                'Jackal\'s Materials',
                'Death \'Roids',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: DropdownButton<String>(
              hint: const Text('Specify Material'),
              isExpanded: true,
              value: mat,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 24,
              style: const TextStyle(fontSize: 24),
              onChanged: (String? newValue) {
                setState(() {
                  mat = newValue!;
                });
              },
              items: materials.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: widget._controllerConta,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Quantity needed',
              ),
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SizedBox(
              width: double.maxFinite,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      ReturnValue(
                        matType: processMatType(matType),
                        rarity: processMat(mat),
                        qtd: int.parse(widget._controllerConta.text),
                      ));
                },
                child: const Text(
                  'Add Material',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  int processMat(String? newValue) {
    if (materials.isNotEmpty) {
      for (var i = 0; i < materials.length; i++) {
        if (newValue == materials[i]) {
          return i;
        }
      }
    }
    return 0;
  }

  String processMatType(newValue) {
    switch (newValue ?? '') {
      case 'Aluminum':
        return 'aluminum';
      case 'Copper':
        return 'copper';
      case 'Iron':
        return 'iron';
      case 'Oil':
        return 'oil';
      case 'Wood':
        return 'wood';
      case 'Fiber':
        return 'fiber';
      case 'Tuber Metal':
        return 'tuber';
      case 'D.O.D. ARMS Rare Metal':
        return 'dod';
      case 'War Ensemble Rare Metal':
        return 'we';
      case 'Candle Wolf Rare Metal':
        return 'cw';
      case 'M.I.L.K. Rare Metal':
        return 'milk';
      case 'Jackal\'s Materials':
        return 'jackal';
      case 'Death \'Roids':
        return 'roids';
      default:
        return 'aluminum';
    }
  }
}

class ReturnValue {
  final String matType;
  final int rarity;
  final int qtd;

  ReturnValue({required this.matType, required this.rarity, required this.qtd});
}
