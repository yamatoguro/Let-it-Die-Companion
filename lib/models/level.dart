// ignore_for_file: non_constant_identifier_names

import 'package:lid_companion/models/rnd_material.dart';

class Level {
  //Requirements
  num hp = 0;
  num stm = 0;
  num str = 0;
  num dex = 0;
  num vit = 0;
  num luk = 0;
  //Stats
  num? atk;
  num? spl;
  num? kc;
  num? durab;
  //Time
  String? research_time;
  String? restock_time;
  //RnD
  List<RnDMaterial>? materials;
}
