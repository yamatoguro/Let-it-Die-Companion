import 'package:flutter/material.dart';
import 'package:lid_companion/components/dialog_item_info.dart';
import 'package:lid_companion/components/dialog_select_recipe.dart';
import 'package:lid_companion/screens/farm_control.dart';
import 'package:lid_companion/screens/farm_recipe.dart';
import 'package:lid_companion/screens/info_screen.dart';

class Mushroom extends StatelessWidget {
  const Mushroom({Key? key}) : super(key: key);

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
                    mushCard("Heartshroom", "assets/images/heartshroom.png"),
                    mushCard("Toughshroom", "assets/images/toughshroom.png"),
                    mushCard("Crushroom", "assets/images/crushroom.png"),
                    mushCard("Boomshroom", "assets/images/boomshroom.png"),
                    mushCard("Staminungus", "assets/images/staminungus.png"),
                    mushCard(
                        "Fluffy Fungus", "assets/images/fluffy_fungus.png"),
                    mushCard("Doomshroom", "assets/images/doomshroom.png"),
                    mushCard("Yogashroom", "assets/images/yogashroom.png"),
                    mushCard("Shockshroom", "assets/images/shockshroom.png"),
                    mushCard("Punchshroom", "assets/images/punchshroom.png"),
                    mushCard(
                        "Transparungus", "assets/images/transparungus.png"),
                    mushCard("Guardshroom", "assets/images/guardshroom.png"),
                    mushCard("Slowmungus", "assets/images/slowmungus.png"),
                    mushCard("Decoyshroom", "assets/images/decoyshroom.png"),
                    mushCard("Lavashroom", "assets/images/lavashroom.png"),
                    mushCard("Brainshroom", "assets/images/brainshroom.png"),
                    mushCard("Gambleshroom", "assets/images/gambleshroom.png"),
                    mushCard("Fun Fungus", "assets/images/fun_fungus.png"),
                    mushCard("Frongus", "assets/images/frongus.png"),
                    mushCard("Mouseshroom", "assets/images/mouseshroom.png"),
                    mushCard("Stingshroom", "assets/images/stingshroom.png"),
                    mushCard("Fishy Fungus", "assets/images/fishy_fungus.png"),
                    mushCard("Snailshroom", "assets/images/snailshroom.png"),
                    mushCard("Dragonshroom", "assets/images/dragonshroom.png"),
                    mushCard("Lifeshroom", "assets/images/lifeshroom.png"),
                    mushCard(
                        "Vampire Fungus", "assets/images/vampire_fungus.png"),
                    mushCard("Evershroom", "assets/images/evershroom.png"),
                    mushCard("Oakshroom", "assets/images/oakshroom.png"),
                    mushCard("Croakstool", "assets/images/croakstool.png"),
                    mushCard("Golden Mouseshroom",
                        "assets/images/golden_mouseshroom.png"),
                    mushCard("Golden Stingshroom",
                        "assets/images/golden_stingshroom.png"),
                    mushCard("Golden Fishy Fungus",
                        "assets/images/golden_fishy_fungus.png"),
                    mushCard("Golden Snailshroom",
                        "assets/images/golden_snailshroom.png"),
                    mushCard("Golden Dragonshroom",
                        "assets/images/golden_dragonshroom.png"),
                    mushCard("Golden Lifeshroom",
                        "assets/images/golden_lifeshroom.png"),
                    mushCard("Golden Vampire Fungus",
                        "assets/images/golden_vampire_fungus.png"),
                    mushCard("Golden Evershroom",
                        "assets/images/golden_evershroom.png"),
                    mushCard("Golden Oakshroom",
                        "assets/images/golden_oakshroom.png"),
                    mushCard("Bronze Skillshroom",
                        "assets/images/bronze_skillshroom.png"),
                    mushCard("Silver Skillshroom",
                        "assets/images/silver_skillshroom.png"),
                    mushCard("Golden Skillshroom",
                        "assets/images/golden_skillshroom.png"),
                    mushCard("Bronze Eggshroom",
                        "assets/images/bronze_eggshroom.png"),
                    mushCard("Silver Eggshroom",
                        "assets/images/silver_eggshroom.png"),
                    mushCard("Golden Eggshroom",
                        "assets/images/golden_eggshroom.png"),
                    mushCard(
                        "Red Stingshroom", "assets/images/red_stingshroom.png"),
                    mushCard("Umbrella Rib Fungus",
                        "assets/images/umbrella_rib_fungus.png"),
                    mushCard("False Brainshroom",
                        "assets/images/false_brainshroom.png"),
                    mushCard(
                        "Cateye Shroom", "assets/images/cateye_shroom.png"),
                    mushCard("Boleoshroom", "assets/images/boleoshroom.png"),
                    mushCard(
                        "Ricebowl Shroom", "assets/images/ricebowl_shroom.png"),
                    mushCard("Bronze Parasol Shroom",
                        "assets/images/bronze_parasol_shroom.png"),
                    mushCard("Silver Parasol Shroom",
                        "assets/images/silver_parasol_shroom.png"),
                    mushCard("Golden Parasol Shroom",
                        "assets/images/golden_parasol_shroom.png"),
                    mushCard("Helmetshroom", "assets/images/helmetshroom.png"),
                    mushCard("Bronze Pumpkinshroom",
                        "assets/images/bronze_pumpkinshroom.png"),
                    mushCard("Silver Pumpkinshroom",
                        "assets/images/silver_pumpkinshroom.png"),
                    mushCard("Gold Pumpkinshroom",
                        "assets/images/gold_pumpkinshroom.png"),
                    mushCard(
                        "Bronze Snowcap", "assets/images/bronze_snowcap.png"),
                    mushCard(
                        "Silver Snowcap", "assets/images/silver_snowcap.png"),
                    mushCard(
                        "Golden Snowcap", "assets/images/golden_snowcap.png"),
                    mushCard(
                        "Splattershroom", "assets/images/splattershroom.png"),
                    mushCard("Big Splattershroom",
                        "assets/images/big_splattershroom.png"),
                    mushCard("Mega Splattershroom",
                        "assets/images/mega_splattershroom.png"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  mushCard(String name, String image) {
    return Card(
      color: Colors.grey[800]!.withOpacity(0.8),
      child: ListTile(
        subtitle: Text(
          name,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        title: const Icon(Icons.info_outline_rounded),
        // subtitle: Text(description),
        onTap: () {},
      ),
    );
  }
}
