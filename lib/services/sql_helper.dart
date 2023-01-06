import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE search(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        metier TEXT,
        metier_id TEXT,
        departement TEXT,
        dep_id TEXT,
        commune TEXT, 
        com_id TEXT,
        arrondissement TEXT,
        arr_id TEXT,
        createdAt DATE DEFAULT (datetime('now','localtime'))
      )
      """);
  }
// id: the id of a item
// title, description: name and description of your activity
// created_at: the time that the item was created. It will be automatically handled by SQLite

  static Future<sql.Database> db() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
       // print(documentsDirectory.uri);
       // String path = join(documentsDirectory.path, "database.db");
    return sql.openDatabase(
      'artisan.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  // Create new item (journal)
  static Future<int> saveResearch(String metier, String metierId, String dep, String depId, String? com, String? comId, String? arr, String? arrId) async {
    final db = await SQLHelper.db();

    final data = {'metier': metier, 'metier_id': metierId, 'departement':dep, 'dep_id': depId, 'commune': com, 'com_id':comId, 'arrondissement': arr, 'arr_id': arrId};
    final id = await db.insert('search', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  // Read 5 latest search (journals)
  static Future<List<Map<String, dynamic>>> getLatestSearch() async {
    final db = await SQLHelper.db();
    return db.query('search', orderBy: "id DESC", limit: 5);
  }

 // Read 1 latest search (journals)
  static Future<List<Map<String, dynamic>>> last() async {
    final db = await SQLHelper.db();

    Future<List<Map<String, Object?>>> x =db.rawQuery("SELECT * FROM search ORDER BY id DESC LIMIT 1");
    
    return x;
     
          /*  print("On est hors du if");
     return  Future.value(true); */
  }




/*   // Read a single item by id
  // The app doesn't use this method but I put here in case you want to see it
  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await SQLHelper.db();
    return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
  }

  // Update an item by id
  static Future<int> updateItem(
      int id, String title, String? descrption) async {
    final db = await SQLHelper.db();

    final data = {
      'title': title,
      'description': descrption,
      'createdAt': DateTime.now().toString()
    };

    final result =
        await db.update('items', data, where: "id = ?", whereArgs: [id]);
    return result;
  } */

  // Delete
  static Future<void> deleteItem(int id) async {
    final db = await SQLHelper.db();
    try {
      await db.delete("items", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }
}