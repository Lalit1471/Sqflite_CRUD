import 'package:crud_testing/sqlite/DataModel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  Future<Database> initDb() async {
    String path = await getDatabasesPath();
    return openDatabase(join(path, "MYDB.db"),
        onCreate: (database, version) async {
      database.execute("""
        CREATE TABLE MyTable(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        subtitle TEXT NOT NULL,
        content TEXT NOT NULL
        );
        """);
    }, version: 1);
  }

  Future<bool> insertData(DataModel dataModel) async {
    final Database db = await initDb();
    db.insert("MyTable", dataModel.toMap());
    return true;
  }
}
