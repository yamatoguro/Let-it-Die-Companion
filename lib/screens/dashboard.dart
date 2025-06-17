import 'package:flutter/material.dart';
import 'package:lid_companion/components/dialog_select_recipe.dart';
import 'package:lid_companion/screens/farm_control.dart';
import 'package:lid_companion/screens/farm_recipe.dart';
import 'package:lid_companion/screens/info_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let it Die Companion'),
        actions: [
          // IconButton(
          //   icon: const Icon(
          //     Icons.settings_outlined,
          //   ),
          //   onPressed: () {},
          // ),
          IconButton(
            icon: const Icon(
              Icons.help_outline,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InfoScreen(),
                  ));
            },
          ),
          // IconButton(
          //   icon: const Icon(
          //     Icons.schedule_outlined,
          //   ),
          //   onPressed: () {},
          // ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fundo-sem-logo.jpg"),
                fit: BoxFit.fill)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                GridView.count(
                  crossAxisCount: 3,
                  physics:
                      const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                  shrinkWrap: true, // You won't see infinite size error
                  children: <Widget>[
                    Card(
                      color: Colors.grey[800]!.withOpacity(0.8),
                      // child: Icon(Icons.all_inclusive_outlined),
                      child: ListTile(
                        title: const Image(
                          image: AssetImage("assets/images/IconMaterials.png"),
                        ),
                        subtitle: const Text(
                          'Lorem ipsum',
                          textAlign: TextAlign.center,
                        ),
                        onTap: () {},
                      ),
                    ),
                    Card(
                      color: Colors.grey[800]!.withOpacity(0.8),
                      // child: Icon(Icons.all_inclusive_outlined),
                      child: ListTile(
                        title: const Image(
                          image: AssetImage('assets/images/IconTengoku.png'),
                        ),
                        subtitle: const Text(
                          'Lorem ipsum',
                          textAlign: TextAlign.center,
                        ),
                        onTap: () {},
                      ),
                    ),
                    Card(
                      color: Colors.grey[800]!.withOpacity(0.8),
                      // child: Icon(Icons.all_inclusive_outlined),
                      child: ListTile(
                        title: const Icon(Icons.all_inclusive_sharp),
                        subtitle: const Text(
                          'Lorem ipsum',
                          textAlign: TextAlign.center,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                Card(
                  color: Colors.grey[800]!.withOpacity(0.8),
                  child: ListTile(
                    leading: Image.asset('assets/images/IconMaterials.png'),
                    title: const Text('Cake List'),
                    subtitle: const Text('Control your farm as you wish'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FarmControl(),
                          ));
                    },
                  ),
                ),
                Card(
                  color: Colors.grey[800]!.withOpacity(0.8),
                  child: ListTile(
                    leading: Image.asset('assets/images/IconBP.png'),
                    title: const Text('Cake Recipe'),
                    subtitle:
                        const Text('Control your farm using R&D requirement'),
                    onTap: () {
                      Future future = showDialog(
                        context: context,
                        builder: ((contextDialog) =>
                            const DialogSelectRecipe()),
                      );
                      future.then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FarmRecipe(),
                            ));
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
