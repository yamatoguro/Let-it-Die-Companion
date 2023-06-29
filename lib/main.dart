import 'package:flutter/material.dart';
// import 'package:lid_companion/screens/dashboard.dart';
import 'package:lid_companion/screens/farm_control.dart';
import 'package:lid_companion/service/database_service.dart';

void main() {
  runApp(const LidCompanion());
}

class LidCompanion extends StatelessWidget {
  const LidCompanion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint((DatabaseService.database != null)
        ? "Banco funcionando"
        : "Banco quebrado");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Let it Die Companion',
      theme: ThemeData(
        // primaryColor: Colors.black,
        colorScheme: const ColorScheme.dark(),
      ),
      home: const FarmControl(),
    );
  }
}
