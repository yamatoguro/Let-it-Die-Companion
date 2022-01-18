import 'package:flutter/material.dart';
import 'package:lid_companion/screens/farm_control.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let it Die Companion'),
        // actions: [
        //   IconButton(
        //     icon: const Icon(
        //       Icons.settings_outlined,
        //     ),
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: const Icon(
        //       Icons.help_outline,
        //     ),
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: const Icon(
        //       Icons.schedule_outlined,
        //     ),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              const ListTile(
                title: Text('Dashboard'),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset('assets/images/IconMaterials.png'),
                  title: const Text('Farm Control'),
                  subtitle: const Text('Control your farm as you wish'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FarmControl(),
                        ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
