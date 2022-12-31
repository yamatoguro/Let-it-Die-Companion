import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
              hint: Text('Material type'),
              isExpanded: true,
              value: matType,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 24,
              style: const TextStyle(color: Colors.white, fontSize: 24),
              onChanged: (String? newValue) {
                setState(() {
                  debugPrint(newValue);

                  if (newValue != null) {
                    String type = processValue(newValue);
                    matType = newValue;
                    var list = mats[type]!;
                    var v;
                    mat = v;
                    materials = [];
                    for (var item in list) {
                      materials.add(item.name);
                    }
                    debugPrint(materials.toString());
                  }
                });
              },
              items: <String>[
                'Aluminium',
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
                "Jackal's Materials",
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: DropdownButton<String>(
              hint: Text('Specify Material'),
              isExpanded: true,
              value: mat,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 24,
              style: const TextStyle(color: Colors.white, fontSize: 24),
              onChanged: (String? newValue) {
                setState(() {
                  mat = newValue!;
                });
              },
              items: materials.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: widget._controllerConta,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Quantity needed',
              ),
              style: TextStyle(
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
                        mat: mat!,
                        qtd: widget._controllerConta.text,
                      ));
                },
                child: Text(
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

  String processValue(String? newValue) {
    switch (newValue ?? '') {
      case 'Aluminium':
        return 'aluminium';
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
      case "Jackal's Materials":
        return 'jackal';
      default:
        return 'aluminium';
    }
  }
}

class ReturnValue {
  final String mat;
  final String qtd;

  ReturnValue({required this.mat, required this.qtd});
}
