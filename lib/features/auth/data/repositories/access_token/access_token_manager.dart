library access_token_manager.dart;

import 'package:injectable/injectable.dart';
import 'package:naftacredit/features/auth/data/index.dart';
import 'package:naftacredit/features/auth/domain/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:sembast/sembast.dart';

@singleton
class AccessTokenManager {
  static final AccessTokenManager _singleton = AccessTokenManager._();

  // dynamically typed store
  final _store = StoreRef.main();
  // sembast database instance
  final _db = getIt<Database>();

  AccessTokenManager._();

  @factoryMethod
  static AccessTokenManager instance() => _singleton;

  Future<AccessToken> get() async {
    // Retrieve sembast box
    final _box = _store.record(Const.kAccessTokenBoxKey);
    final _expiryDateBox = _store.record(Const.kAccessTokenBoxExpiry);
    final _token = await _box.get(_db) as String?;
    final _expiry = await _expiryDateBox.get(_db) as int?;
    // return cached access token
    return AccessToken(
      accessToken: BasicTextField(_token),
      tokenType: TokenType.parse(null),
      expiryDate: BasicTextField(_expiry),
    );
  }

  Future<void> save({
    String? token,
    required TokenResponse response,
    TokenType type = TokenType.bearer,
    Duration duration = const Duration(days: 365),
  }) async {
    final _token = token ?? response.accessToken;
    // Retrieve sembast box
    final _box = _store.record(Const.kAccessTokenBoxKey);
    final _expiryDateBox = _store.record(Const.kAccessTokenBoxExpiry);
    // Record expiry date in box
    await _expiryDateBox.put(
      _db,
      response.expiryDate ?? duration.inMilliseconds,
    );
    // record access token (override if exists)
    switch (type) {
      case TokenType.bearer:
        await _box.put(_db, 'Bearer $_token');
        break;
      default:
        await _box.put(_db, '$_token');
    }
  }

  Future<void> delete() async {
    await _store.record(Const.kAccessTokenBoxKey).delete(_db);
    await _store.record(Const.kAccessTokenBoxExpiry).delete(_db);
  }
}
