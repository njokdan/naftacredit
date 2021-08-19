import 'dart:async';

import 'package:naftacredit/utils/utils.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class AppDatabase {
  static final AppDatabase _singleton = AppDatabase._();

  static AppDatabase get instance => _singleton;

  // Used for transsforming syncronous code into asyncronous code
  Completer<Database>? _dbOpenCompleter;

  AppDatabase._();

  Future<Database> get database async {
    // if completeer is null, AppDatabase is newly instantiated so database is not yet open
    if (_dbOpenCompleter == null) {
      _dbOpenCompleter ??= Completer();

      // Calling _openDatabase() will also complete the completer with a  database instance
      await _openDatabase();
    }
    // If the database is already opened, awaiting the future will happen instantly.
    // Otherwise awaiting the returned future will take quite some time until [complete()] is called
    // on the [_dbOpenCompleter] in the [_openDatabase] method
    return _dbOpenCompleter!.future;
  }

  Future<void> _openDatabase() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final dbPath = p.join(appDocumentDir.path, AppStrings.sembastDB);
    final database = await databaseFactoryIo.openDatabase(dbPath);
    _dbOpenCompleter!.complete(database);
  }
}
