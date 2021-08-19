library alt_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:naftacredit/features/core/data/index.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:retrofit/retrofit.dart';

part 'alt_repository.gen.dart';

// _AltRepository(AppHttpClient client, {this.baseUrl})
//     : _dio = client.copyWith(DynamicResponseObject.fromDioResponse);

// final AppHttpClient _dio;

@singleton
@RestApi()
abstract class AltRepository {
  @factoryMethod
  factory AltRepository(AppHttpClient client) = _AltRepository;

  @GET(EndPoints.COUNTRIES)
  Future<CountriesDTO> countries();

  @GET(EndPoints.BANKS)
  Future<BankDTOList> banks();
}
