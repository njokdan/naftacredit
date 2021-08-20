library wallet_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:naftacredit/features/core/data/index.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_repository.gen.dart';

// _WalletRepository(AppHttpClient client, {this.baseUrl})
//     : _dio = client.copyWith(DynamicResponseObject.fromDioResponse);

// final AppHttpClient _dio;

@singleton
@RestApi()
abstract class WalletRepository {
  @factoryMethod
  factory WalletRepository(AppHttpClient client) = _WalletRepository;

  @GET(EndPoints.RETRIEVE_USERS_TRANSACTIONS)
  Future<void> fetchTransactions();

  @POST(EndPoints.ADD_TO_WALLET_FROM_BANK)
  Future<void> addToWalletFromBank();

  @POST(EndPoints.CONFIRM_ADD_FROM_BANK)
  Future<void> confirmAddFromBank();
}
// VALID_ARCHS = "$(ARCHS_STANDARD)";
