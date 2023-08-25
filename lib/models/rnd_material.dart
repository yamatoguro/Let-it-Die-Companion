import 'package:flutter/cupertino.dart';

class RnDMaterial {
  final String name;
  final String type;
  final String url;
  final String urlFullImage;
  final int rarity;
  int quantity = 0;
  final SingleChildScrollView where;

  RnDMaterial({
    required this.type,
    required this.name,
    required this.url,
    required this.urlFullImage,
    required this.rarity,
    required this.where,
  });
}
