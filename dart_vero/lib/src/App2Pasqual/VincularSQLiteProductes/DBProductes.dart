import 'package:dart_vero/src/App2Pasqual/VincularSQLiteProductes/Productes.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {

  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'AppPasqual.db'),
        onCreate: (db, version) {
          return db.execute(
              "CREATE TABLE Productes (id INTEGER PRIMARY KEY, nom TEXT, preu double"
          );
        }, version: 1);
  }


  static Future<int> insert(Productes producte) async {
    Database database = await _openDB();
    return database.insert("Productes", producte.toMap());
  }

  static Future<int> delete(Productes producte) async {
    Database database = await _openDB();

    return database.delete("Productes", where: "id = ?", whereArgs: [producte.id]);
  }

  static Future<int> update(Productes producte) async{
    Database database = await _openDB();

    return database.update("Productes", producte.toMap(), where: "id = ?", whereArgs: [producte.id]);
  }

  static Future<List<Productes>> productes() async{
    Database database = await _openDB();
    final List<Map<String, dynamic>> ProductesMap = await database.query("Productes");

    return List.generate(ProductesMap.length, (i) => Productes(
        id:  ProductesMap[i]['id'],
        nom: ProductesMap[i]['nom'],
        preu: ProductesMap[i]['preu']
    ));
  }

  static Future<int> insertar2(Productes productes) async {

    Database database = await _openDB();
    var resultado = await database.rawInsert("INSERT INTO Productes(id, nom, preu VALUES (${productes.id}, ${productes.nom}, ${productes.preu}");
  }
}