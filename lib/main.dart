import 'package:flutter/material.dart';
import 'package:lid_companion/screens/farm_control.dart';

void main() {
  runApp(const LidCompanion());
}

class LidCompanion extends StatelessWidget {
  const LidCompanion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Let it Die Companion',
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: const ColorScheme.highContrastDark(),
      ),
      home: const FarmControl(),
    );
  }
}
