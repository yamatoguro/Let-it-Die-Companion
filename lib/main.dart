import 'package:flutter/material.dart';
import 'package:lid_companion/components/dialog_add_material.dart';
import 'package:lid_companion/screens/dashboard.dart';

void main() {
  runApp(const LidCompanion());
}

class LidCompanion extends StatelessWidget {
  const LidCompanion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let it Die Companion',
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: const ColorScheme.highContrastDark(),
      ),
      home: const Dashboard(),
    );
  }
}
