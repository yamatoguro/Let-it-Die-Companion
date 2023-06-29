// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:lid_companion/models/cake_item.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static final database = start();
  static start() async {
    // Avoid errors caused by flutter upgrade.
    // Importing 'package:flutter/widgets.dart' is required.
    WidgetsFlutterBinding.ensureInitialized();
    // Open the database and store the reference.
    return openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'cake.db'),
      // When the database is first created, create a table to store dogs.
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          'CREATE TABLE cakeitem(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, type TEXT, rarity INTEGER, quantity INTEGER)',
        );
      },
      // Set the version. This executes the onCreate function and provides a
      // path to perform database upgrades and downgrades.
      version: 1,
    );
  }

  static Future<void> insertCakeItem(CakeItem cakeItem) async {
    // Define a function that inserts dogs into the database
    // Get a reference to the database.
    final db = await database;

    // Insert the Dog into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same dog is inserted twice.
    //
    // In this case, replace any previous data.
    await db.insert(
      'cakeitem',
      cakeItem.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<CakeItem>> cakeItems() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('cakeitem');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      debugPrint(maps.length.toString());
      return CakeItem(
        maps[i]['id'],
        type: maps[i]['type'],
        rarity: maps[i]['rarity'],
        quantity: maps[i]['quantity'],
      );
    });
  }

  static Future<void> updateCakeItem(CakeItem cakeItem) async {
    // Get a reference to the database.
    final db = await database;
    String type = cakeItem.type;
    // Update the given Dog.
    await db.update(
      'cakeitem',
      // Use a `where` clause to delete a specific dog.
      where: 'type LIKE ? and rarity = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: ['$type%', cakeItem.rarity],
    );
  }

  static Future<void> deleteCakeItem(CakeItem cakeItem) async {
    // Get a reference to the database.
    final db = await database;
    String type = cakeItem.type;
    int rarity = cakeItem.rarity;
    // Remove the Dog from the database.
    await db.rawQuery(
      'DELETE FROM cakeitem WHERE type LIKE "$type%" AND rarity="$rarity"',
    );

    // delete(
    //   'cakeitem',
    //   // Use a `where` clause to delete a specific dog.
    //   where: 'type LIKE ? and rarity = ?',
    //   // Pass the Dog's id as a whereArg to prevent SQL injection.
    //   whereArgs: ['$type%', cakeItem.rarity],
    // );
  }
}
