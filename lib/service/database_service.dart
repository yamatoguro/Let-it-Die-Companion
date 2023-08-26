// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:lid_companion/materials_data.dart';
import 'package:lid_companion/models/cake_item.dart';
import 'package:lid_companion/models/rnd_material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static final database = start();
  static Future<Database> start() async {
    WidgetsFlutterBinding.ensureInitialized();
    return openDatabase(
      join(await getDatabasesPath(), 'cake.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE cakeitem(id INTEGER PRIMARY KEY NOT NULL, type TEXT, rarity INTEGER, quantity INTEGER, current INTEGER)',
        );
      },
      version: 1,
    );
  }

  static Future<void> insertCakeItem(CakeItem cakeItem) async {
    final db = await database;

    //
    await db.insert(
      'cakeitem',
      cakeItem.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<CakeItem>> cakeItems() async {
    final Database db = await database;

    final List<Map<String, dynamic>> maps = await db.query('cakeitem');

    return List.generate(maps.length, (i) {
      return CakeItem(
        id: maps[i]['id'],
        type: maps[i]['type'],
        rarity: maps[i]['rarity'],
        quantity: maps[i]['quantity'],
        current: maps[i]['current'],
      );
    });
  }

  static Future<void> updateCakeItem(CakeItem cakeItem) async {
    final Database db = await database;
    int id = getID(mats[cakeItem.type]![cakeItem.rarity - 1]);
    await db.update(
      'cakeitem',
      cakeItem.toMap(),
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  static Future<void> deleteCakeItem(CakeItem cakeItem) async {
    final Database db = await database;
    int id = getID(mats[cakeItem.type]![cakeItem.rarity - 1]);
    db.delete(
      'cakeitem',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  static Future<void> updateCakeList(List<CakeItem> list) async {
    for (CakeItem item in list) {
      updateCakeItem(item);
    }
  }

  static int getID(RnDMaterial m) {
    int id = 0;
    switch (m.type) {
      case 'aluminum':
        switch (m.rarity) {
          case 1:
            id = 1;
            break;
          case 2:
            id = 2;
            break;
          case 3:
            id = 3;
            break;
          case 4:
            id = 4;
            break;
          case 5:
            id = 5;
            break;
          case 6:
            id = 6;
            break;
          case 7:
            id = 7;
            break;
          case 8:
            id = 8;
            break;
        }
        break;
      case 'copper':
        switch (m.rarity) {
          case 1:
            id = 9;
            break;
          case 2:
            id = 10;
            break;
          case 3:
            id = 11;
            break;
          case 4:
            id = 12;
            break;
          case 5:
            id = 13;
            break;
          case 6:
            id = 14;
            break;
          case 7:
            id = 15;
            break;
          case 8:
            id = 16;
            break;
        }
        break;
      case 'iron':
        switch (m.rarity) {
          case 1:
            id = 17;
            break;
          case 2:
            id = 18;
            break;
          case 3:
            id = 19;
            break;
          case 4:
            id = 20;
            break;
          case 5:
            id = 21;
            break;
          case 6:
            id = 22;
            break;
          case 7:
            id = 23;
            break;
          case 8:
            id = 24;
            break;
        }
        break;
      case 'oil':
        switch (m.rarity) {
          case 1:
            id = 25;
            break;
          case 2:
            id = 26;
            break;
          case 3:
            id = 27;
            break;
          case 4:
            id = 28;
            break;
          case 5:
            id = 29;
            break;
          case 6:
            id = 30;
            break;
          case 7:
            id = 31;
            break;
          case 8:
            id = 32;
            break;
        }
        break;
      case 'wood':
        switch (m.rarity) {
          case 1:
            id = 33;
            break;
          case 2:
            id = 34;
            break;
          case 3:
            id = 35;
            break;
          case 4:
            id = 36;
            break;
          case 5:
            id = 37;
            break;
          case 6:
            id = 38;
            break;
          case 7:
            id = 39;
            break;
          case 8:
            id = 40;
            break;
        }
        break;
      case 'fiber':
        switch (m.rarity) {
          case 1:
            id = 41;
            break;
          case 2:
            id = 42;
            break;
          case 3:
            id = 43;
            break;
          case 4:
            id = 44;
            break;
          case 5:
            id = 45;
            break;
          case 6:
            id = 46;
            break;
          case 7:
            id = 47;
            break;
          case 8:
            id = 48;
            break;
        }
        break;
      case 'tuber':
        switch (m.rarity) {
          case 1:
            id = 49;
            break;
          case 2:
            id = 50;
            break;
          case 3:
            id = 51;
            break;
          case 4:
            id = 52;
            break;
          case 5:
            id = 53;
            break;
        }
        break;
      case 'dod':
        switch (m.rarity) {
          case 1:
            id = 54;
            break;
          case 2:
            id = 55;
            break;
          case 3:
            id = 56;
            break;
          case 4:
            id = 57;
            break;
          case 5:
            if (m.name == 'D.O.D. ARMS 44CE Metal') {
              id = 58;
            } else {
              id = 59;
            }
            break;
          case 6:
            id = 60;
            break;
          case 7:
            id = 61;
            break;
        }
        break;
      case 'we':
        switch (m.rarity) {
          case 1:
            id = 62;
            break;
          case 2:
            id = 63;
            break;
          case 3:
            id = 64;
            break;
          case 4:
            id = 65;
            break;
          case 5:
            if (m.name == 'War Ensemble 44CE Metal') {
              id = 66;
            } else {
              id = 67;
            }
            break;
          case 6:
            id = 68;
            break;
          case 7:
            id = 69;
            break;
        }
        break;
      case 'cw':
        switch (m.rarity) {
          case 1:
            id = 70;
            break;
          case 2:
            id = 71;
            break;
          case 3:
            id = 72;
            break;
          case 4:
            id = 73;
            break;
          case 5:
            if (m.name == 'Candle Wolf 44CE Metal') {
              id = 74;
            } else {
              id = 75;
            }
            break;
          case 6:
            id = 76;
            break;
          case 7:
            id = 77;
            break;
        }
        break;
      case 'milk':
        switch (m.rarity) {
          case 1:
            id = 78;
            break;
          case 2:
            id = 79;
            break;
          case 3:
            id = 80;
            break;
          case 4:
            id = 81;
            break;
          case 5:
            if (m.name == 'M.I.L.K. 44CE Metal') {
              id = 82;
            } else {
              id = 83;
            }
            break;
          case 6:
            id = 84;
            break;
          case 7:
            id = 85;
            break;
        }
        break;
      case 'jackal':
        switch (m.name) {
          case 'Jackal X ID Card':
            id = 86;
            break;
          case 'Jackal Y ID Card':
            id = 87;
            break;
          case 'Jackal Z ID Card':
            id = 88;
            break;
          case 'Sunflower Rare Metal':
            id = 89;
            break;
          case 'Sunflower Rare Metal X':
            id = 90;
            break;
          case 'Sunflower Rare Metal Y':
            id = 91;
            break;
          case 'Sunflower Rare Metal Z':
            id = 92;
            break;
          case 'Sunflower Rare Metal D':
            id = 93;
            break;
          case 'Jackal X DNA Data':
            id = 94;
            break;
          case 'Jackal Y DNA Data':
            id = 95;
            break;
          case 'Jackal Z DNA Data':
            id = 96;
            break;
        }
        break;
      case 'roids':
        switch (m.rarity) {
          case 1:
            id = 97;
            break;
          case 2:
            id = 98;
            break;
          case 3:
            id = 99;
            break;
          case 4:
            id = 100;
            break;
          case 5:
            id = 101;
            break;
        }
        break;
      default:
        break;
    }
    return id;
  }
}
