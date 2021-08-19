import 'package:naftacredit/manager/locator/locator.dart';
import 'package:sembast/sembast.dart';

mixin DAOEntity<CopyWithImpl> {
  int? get key;

  CopyWithImpl get copyWith;

  Map<String, dynamic> toJson();
}

abstract class BaseDAO<U extends DAOEntity<dynamic>> {
  StoreRef<int, Map<String, Object?>> get store;

  Database get _db => getIt<Database>();

  Future<List<U>?> all({
    Filter? filter,
    List<SortOrder>? order,
    int? limit,
    required U Function(Map<String, dynamic>) fromJson,
  }) async {
    final finder = Finder(
      filter: filter,
      sortOrders: order ?? [SortOrder('created_at')],
      limit: limit,
    );

    final snapshots = await store.find(_db, finder: finder);

    return snapshots.map((val) {
      final entity = fromJson.call(val.value);

      entity.copyWith(key: val.key);

      return entity;
    }).toList();
  }

  Future<int> insert(U entity) async => await store.add(_db, entity.toJson());

  Future<U?> findFirstByKey(
    U? Function(Map<String, dynamic>) fromJson, {
    required int? key,
  }) async {
    final finder = Finder(limit: 1, filter: Filter.byKey(key));
    final snapshot = await store.findFirst(_db, finder: finder);

    if (snapshot == null) return null;

    return fromJson.call(snapshot.value);
  }

  Future<U?> find(
    U? Function(Map<String, dynamic>) fromJson, {
    String field = 'id',
    dynamic value,
    bool? anyInList,
  }) async {
    final finder = Finder(
      limit: 1,
      filter: Filter.equals(field, value, anyInList: anyInList),
    );
    final snapshot = await store.findFirst(_db, finder: finder);

    if (snapshot == null) return null;

    return fromJson.call(snapshot.value);
  }

  Future<int> update(U entity) async {
    final finder = Finder(filter: Filter.byKey(entity.key), limit: 1);
    return await store.update(_db, entity.toJson(), finder: finder);
  }

  Future<int> delete(U entity) async {
    final finder = Finder(filter: Filter.byKey(entity.key), limit: 1);
    return await store.delete(_db, finder: finder);
  }

  Future<void> drop() async => await store.drop(_db);
}
