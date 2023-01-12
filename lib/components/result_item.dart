import 'package:flutter/material.dart';
import 'package:lid_companion/materials_data.dart';

class ResultItem extends StatelessWidget {
  final RnDMaterial material;
  final String quantity;
  const ResultItem({
    Key? key,
    required this.material,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(1),
      elevation: 0.1,
      color: Colors.grey[800]!.withOpacity(0.5),
      child: ListTile(
        leading: Image.network(
          material.url,
          alignment: Alignment.center,
          width: 32,
        ),
        title: Text(material.name),
        subtitle: Row(
          children: [..._getStars(material.rarity)],
        ),
        trailing: Text(
          quantity,
          style: const TextStyle(fontSize: 36, height: 1.5),
        ),
      ),
    );
  }

  _getStars(int rarity) {
    var stars = [];
    for (var i = 0; i < material.rarity; i++) {
      stars.add(const Icon(
        Icons.star,
        color: Colors.yellowAccent,
        size: 15,
      ));
    }
    return stars;
  }
}
