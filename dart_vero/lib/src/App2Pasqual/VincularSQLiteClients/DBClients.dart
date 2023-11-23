import 'dart:html';

import 'package:dart_vero/src/App2Pasqual/VincularSQLiteClients/Clients.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {

  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'AppPasqual.db'),
        onCreate: (db, version) {
          return db.execute(
              "CREATE TABLE Clients(id INTEGER PRIMARY KEY, nom TEXT, correu TEXT, pswd Text"
          );
        }, version: 1);
  }


  static Future<int> insert(Clients clients) async {
    Database database = await _openDB();
    return database.insert("Clients", clients.toMap());
  }

  static Future<int> delete(Clients clients) async {
    Database database = await _openDB();

    return database.delete("Clients", where: "id = ?", whereArgs: [clients.id]);
  }

  static Future<int> update(Clients clients) async{
    Database database = await _openDB();

    return database.update("Clients", clients.toMap(), where: "id = ?", whereArgs: [clients.id]);
  }

  static Future<List<Clients>> clientes() async{
    Database database = await _openDB();
    final List<Map<String, dynamic>> clientesMap = await database.query("Clientes");

    return List.generate(clientesMap.length, (i) => Clients(
        id:  clientesMap[i]['id'],
        nom: clientesMap[i]['nom'],
        pswd: clientesMap[i]['pswd'],
        correu: clientesMap[i]['correu']
    ));
  }

  static Future<int> insertar2(Clients clients) async {

    Database database = await _openDB();
    var resultado = await database.rawInsert("INSERT INTO clientes (id, nom, pswd, correu VALUES (${clients.id}, ${clients.nom}, ${clients.pswd}, ${clients.correu}");
  }
}