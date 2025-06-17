import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Acknowledgment and Gratitude',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              // color: Colors.tealAccent,
              fontSize: 24),
        ),
        actions: [
          // IconButton(
          //   icon: const Icon(
          //     Icons.settings_outlined,
          //   ),
          //   onPressed: () {},
          // ),
          // IconButton(
          //   icon: const Icon(
          //     Icons.help_outline,
          //   ),
          //   onPressed: () {},
          // ),
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
            child: Column(
              children: [
                const ListTile(
                  title: Text(
                    'Thank you all senpais for making this project possible',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.tealAccent,
                        fontSize: 18),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Card(
                        color: Colors.grey[800]!.withOpacity(0.8),
                        // child: Icon(Icons.all_inclusive_outlined),
                        child: ListTile(
                          leading: const Image(
                            image: AssetImage("assets/images/dynamo.jpeg"),
                            fit: BoxFit.fitHeight,
                          ),
                          trailing: _playstation(),
                          title: const Text(
                            'DynamoGamer8500',
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          subtitle: const Text(
                            'Diluz84',
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Card(
                        color: Colors.grey[800]!.withOpacity(0.8),
                        // child: Icon(Icons.all_inclusive_outlined),
                        child: ListTile(
                          leading: const Image(
                            image: AssetImage("assets/images/uncle_D.png"),
                            fit: BoxFit.fitHeight,
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: _steam(),
                          ),
                          title: const Text(
                            'Igor',
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Now this is me, I\'m an independent software developer who works in a ton of technologies and made this as a way to make things simple for all players.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.tealAccent,
                        fontSize: 18),
                  ),
                ),
                Card(
                  color: Colors.grey[800]!.withOpacity(0.8),
                  // child: Icon(Icons.all_inclusive_outlined),
                  child: ListTile(
                    leading: const Image(
                      image: AssetImage("assets/images/me.jpg"),
                      fit: BoxFit.fitHeight,
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: _steam(),
                    ),
                    title: const Text(
                      'Yama Toguro',
                      // textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    subtitle: const Text(
                      'yamatoguro#3531',
                      // textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Image _playstation() {
    return const Image(
      image: AssetImage("assets/images/ps.png"),
      fit: BoxFit.scaleDown,
    );
  }

  Image _steam() {
    return const Image(
      image: AssetImage("assets/images/steam.png"),
      fit: BoxFit.scaleDown,
    );
  }
}
