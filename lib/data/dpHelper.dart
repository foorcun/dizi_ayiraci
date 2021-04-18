import 'package:sqflite/sqflite.dart';

class DbHelper {
  Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = initializeDb();
    }
    return _db;
  }

  initializeDb() {}
}
