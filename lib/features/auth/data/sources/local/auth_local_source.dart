library auth_local_source.dart;

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:naftacredit/features/auth/data/models/token_response/token_response.dart';
import 'package:naftacredit/features/auth/data/repositories/access_token/access_token_manager.dart';
import 'package:naftacredit/features/core/data/models/user/user_dto.dart';
import 'package:naftacredit/manager/settings/external/preference_repository.dart';
import 'package:naftacredit/utils/utils.dart';

@singleton
class AuthLocalDatasource {
  final AccessTokenManager _manager;
  final PreferenceRepository _repository;
  final UserDAO _userDAO;

  AuthLocalDatasource(this._manager, this._userDAO, this._repository);

  Future<void> cacheAuthenticatedUser(UserDTO? user) async {
    if (user == null) return;
    // insert record in sembast db
    final key = await _userDAO.insert(user);
    // Store last authenticated user key in shared_pref
    await _repository.setInt(key: Const.kUserDTOPrefKey, value: key);
  }

  Future<Option<UserDTO?>> getUser() async {
    final key = await _repository.getInt(Const.kUserDTOPrefKey);
    // find record by key
    final _result = await _userDAO.findFirstByKey(
      (p0) => UserDTO.fromJson(p0),
      key: key,
    );

    return optionOf(_result);
  }

  Future<void> cacheUserAccessToken(dynamic response) async => await _manager
      .save(response: TokenResponse.fromJson(response as Map<String, dynamic>));

  Future<void> signOut({
    bool clearUser = true,
    bool clearAccessToken = true,
  }) async {
    if (clearUser) {
      await _userDAO.drop();
      await _repository.setInt(key: Const.kUserDTOPrefKey, value: 0);
    }

    if (clearAccessToken) await _manager.delete();
  }
}
